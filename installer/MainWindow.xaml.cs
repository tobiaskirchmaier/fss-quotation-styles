using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using System.Windows;

namespace FSSStyleInstaller;

public partial class MainWindow
{
    private const string StyleUrl = "https://raw.githubusercontent.com/tobiaskirchmaier/fss-quotation-styles/main/FSSStyle.xsl";

    private static readonly HttpClient HttpClient = new();

    private readonly string _styleDirectory;
    private readonly string _styleFile;

    public MainWindow()
    {
        InitializeComponent();

        _styleDirectory = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "Microsoft", "Bibliography", "Style");

        _styleFile = Path.Combine(_styleDirectory, "FSSStyle.xsl");

        TargetText.Text = $"Ziel: {_styleFile}";

        Loaded += MainWindow_Loaded;
    }

    private async void MainWindow_Loaded(object sender, RoutedEventArgs e)
    {
        await InstallAsync();
    }

    private async Task InstallAsync()
    {
        string temporaryFile = Path.Combine(_styleDirectory, "FSSStyle.xsl.tmp");

        try
        {
            SetStatus("Installation wird vorbereitet …", 0);

            Directory.CreateDirectory(_styleDirectory);

            await Task.Delay(200);

            SetStatus("FSSStyle.xsl wird heruntergeladen …", 10);

            using HttpResponseMessage response = await HttpClient.GetAsync(StyleUrl, HttpCompletionOption.ResponseHeadersRead);

            response.EnsureSuccessStatusCode();

            long? contentLength = response.Content.Headers.ContentLength;

            await using Stream input = await response.Content.ReadAsStreamAsync();

            await using (FileStream output = new(temporaryFile, FileMode.Create, FileAccess.Write, FileShare.None))
            {
                byte[] buffer = new byte[81920];

                long totalRead = 0;
                int bytesRead;

                while ((bytesRead = await input.ReadAsync(buffer)) > 0)
                {
                    await output.WriteAsync(buffer.AsMemory(0, bytesRead));

                    totalRead += bytesRead;

                    if (contentLength.HasValue && contentLength.Value > 0)
                    {
                        double downloadProgress = (double)totalRead / contentLength.Value;

                        double progress = 10 + downloadProgress * 65;

                        SetStatus("FSSStyle.xsl wird heruntergeladen …", progress);
                    }
                }

                await output.FlushAsync();
            }

            SetStatus("FSSStyle.xsl wird überprüft …", 80);

            ValidateStyleFile(temporaryFile);

            SetStatus("FSSStyle.xsl wird installiert …", 90);

            File.Move(temporaryFile, _styleFile, true);

            await Task.Delay(300);

            SetStatus("Installation erfolgreich.", 100);

            StatusText.Text = "Der FSS Zitierstil wurde erfolgreich für Microsoft Word installiert.";

            ProgressText.Text = "100 %";

            CloseButton.IsEnabled = true;
        }
        catch (Exception exception)
        {
            TryDelete(temporaryFile);
            HandleInstallationError(exception);
        }
    }

    private static void ValidateStyleFile(string file)
    {
        if (!File.Exists(file))
        {
            throw new InvalidDataException("File does not exist.");
        }

        // TODO: implement proper validation
    }

    private void SetStatus(string status, double progress)
    {
        StatusText.Text = status;

        ProgressBar.Value = Math.Clamp(progress, 0, 100);

        ProgressText.Text = $"{Math.Round(progress)} %";
    }

    private void HandleInstallationError(Exception exception)
    {
        ProgressBar.Value = 0;
        ProgressText.Text = "";

        StatusText.Text = "Installation failed.";

        CloseButton.IsEnabled = true;

        MessageBox.Show(
            this,
            $"An error occurred:\n\n" +
            $"{exception.Message}",
            "FSS quotation style",
            MessageBoxButton.OK,
            MessageBoxImage.Error);
    }

    private void CloseButton_Click(object sender, RoutedEventArgs e)
    {
        Close();
    }

    private static void TryDelete(string file)
    {
        try
        {
            if (File.Exists(file))
            {
                File.Delete(file);
            }
        }
        catch
        {
            // ignore
        }
    }

}