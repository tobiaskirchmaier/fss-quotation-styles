#ifndef UNICODE
#define UNICODE
#endif

#pragma once
#define IDB_MY_IMAGE 101
#define ID_BTN_INSTALL 1001
#define ID_BTN_CANCEL  1002

#pragma comment(linker,"\"/manifestdependency:type='win32' name='Microsoft.Windows.Common-Controls' version='6.0.0.0' processorArchitecture='*' publicKeyToken='6595b64144ccf1df' language='*'\"")

#include <vector>
#include <string>
#include <windows.h>
#include <filesystem>
#include <commctrl.h>
#include <urlmon.h>
#include <shlobj.h>
#pragma comment(lib, "urlmon.lib")

static HFONT segoeFont;
static HWND hText;
static HWND hInstallBtn;
static HWND hCancelBtn;
static HWND hProgressBar;

static LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);

int WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE, PWSTR, const int nShowCmd) {
    SetConsoleOutputCP(CP_UTF8);

    constexpr wchar_t CLASS_NAME[]  = L"FSS BibStyle installer";

    INITCOMMONCONTROLSEX icEx = {};
    icEx.dwSize = sizeof(INITCOMMONCONTROLSEX);
    icEx.dwICC = ICC_PROGRESS_CLASS;
    InitCommonControlsEx(&icEx);

    WNDCLASS wc = { };
    wc.lpfnWndProc   = WindowProc;
    wc.hInstance     = hInstance;
    wc.lpszClassName = CLASS_NAME;
    wc.hbrBackground = reinterpret_cast<HBRUSH>(COLOR_WINDOW + 1);

    RegisterClass(&wc);

    const auto hwnd = CreateWindowExW(
        0,
        CLASS_NAME,
        L"FSS quotation style installer",
        WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX,
        CW_USEDEFAULT, CW_USEDEFAULT, 575, 375,
        nullptr,
        nullptr,
        hInstance,
        nullptr
        );

    if (hwnd == nullptr)
    {
        return 0;
    }

    ShowWindow(hwnd, nShowCmd);

    MSG msg = { };
    while (GetMessage(&msg, nullptr, 0, 0) > 0)
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }

    return 0;
}

static std::vector<int> CALLBACK CalcSingleButtonPosition(HWND hInstance, const int btnWidth, const int btnHeight, const int margin = 25) {
    RECT clientRect;
    GetClientRect(hInstance, &clientRect);

    const int windowWidth  = clientRect.right - clientRect.left;
    const int windowHeight = clientRect.bottom - clientRect.top;

    constexpr int buttonWidth  = 110;
    constexpr int buttonHeight = 30;

    const int posX = windowWidth- buttonWidth - margin;
    const int posY = windowHeight - buttonHeight - margin;

    return {posX, posY, btnWidth, btnHeight};
}

static std::wstring GetInstallPath()
{
    PWSTR appData = nullptr;

    if (FAILED(SHGetKnownFolderPath(
        FOLDERID_RoamingAppData,
        KF_FLAG_DEFAULT,
        nullptr,
        &appData)))
    {
        return {};
    }

    std::wstring path(appData);
    CoTaskMemFree(appData);

    path += L"\\Microsoft\\Bibliography\\Style";

    return path;
}

static int CALLBACK DownloadStyle(HWND hwnd) {
    const std::wstring styleUrl = L"https://raw.githubusercontent.com/tobiaskirchmaier/fss-quotation-styles/main/FSSStyle.xsl";
    const std::wstring fileName = L"\\FSSStyle.xsl";

    SendMessage(hProgressBar, PBM_SETPOS, 25, 0);

    std::filesystem::create_directories(GetInstallPath());

    const HRESULT hr = URLDownloadToFileW(
        nullptr,
        styleUrl.c_str(),
        GetInstallPath().append(fileName).c_str(),
        0,
        nullptr
    );

    if (hr != S_OK) {
        DestroyWindow(hProgressBar);
        hProgressBar = nullptr;

        SetWindowTextW(hText, L"Download fehlgeschlagen! Prüfe deine Internetverbindung.");
        return 0;
    }

    DestroyWindow(hText);
    hText = nullptr;

    SendMessage(hProgressBar, PBM_SETPOS, 100, 0);

    hText = CreateWindowW(
        L"STATIC",
        L"Installation erfolgreich abgeschlossen!",
        WS_CHILD | WS_VISIBLE,
        140, 20,
        350, 200,
        hwnd,
        nullptr,
        nullptr,
        nullptr);

    SendMessage(hText, WM_SETFONT, reinterpret_cast<WPARAM>(segoeFont), TRUE);

    SetWindowTextW(hCancelBtn, L"Fertig");

    return 1;
}

LRESULT CALLBACK WindowProc(HWND hwnd, const UINT uMsg, const WPARAM wParam, const LPARAM lParam)
{
    switch (uMsg)
    {
        case WM_CREATE: {
            const auto hInstance = GetModuleHandle(nullptr);

            auto hBitmap = static_cast<HBITMAP>(LoadImageW(
                hInstance,
                MAKEINTRESOURCE(IDB_MY_IMAGE),
                IMAGE_BITMAP,
                100, 300,
                0
            ));

            const auto hPictureBox = CreateWindowW(
                L"STATIC",
                nullptr,
                WS_CHILD | WS_VISIBLE | SS_BITMAP,
                20, 10,
                100, 100,
                hwnd,
                nullptr,
                hInstance,
                nullptr
            );

            SendMessageW(hPictureBox, STM_SETIMAGE, IMAGE_BITMAP, reinterpret_cast<LPARAM>(hBitmap));

            auto font = static_cast<HFONT>(GetStockObject(DEFAULT_GUI_FONT));

            hText = CreateWindowW(
                L"STATIC",
                L"Willkommen beim FSS-Zitierstil Einrichtungsprogramm.\n\nBitte stellen Sie sicher, dass Ihr Computer mit dem Internet verbunden ist, um eine reibungslose Installation zu gewährleisten.\n\nNach der erfolgreichen Installation können Sie den Installer löschen. Starten Sie nach dem Installationsprozess MS Word neu, falls Sie es bereits offen haben.\n\nKlicken Sie auf Installieren, um den Installationsprozess zu starten.\n\nFalls Sie den Installationsprozess abbrechen möchten, so klicken Sie auf abbrechen.",
                WS_CHILD | WS_VISIBLE,
                140, 20,
                350, 200,
                hwnd,
                nullptr,
                nullptr,
                nullptr);

            SendMessage(hText, WM_SETFONT, reinterpret_cast<WPARAM>(font), TRUE);

            const auto vBtnPos = CalcSingleButtonPosition(hwnd, 110, 30, 25);

            hInstallBtn = CreateWindowW(
                L"BUTTON",
                L"Installieren",
                WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
                vBtnPos.at(0), vBtnPos.at(1),
                vBtnPos.at(2), vBtnPos.at(3),
                hwnd,
                reinterpret_cast<HMENU>(ID_BTN_INSTALL),
                hInstance,
                nullptr);

            segoeFont = CreateFontW(
                16, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE,
                DEFAULT_CHARSET, OUT_OUTLINE_PRECIS, CLIP_DEFAULT_PRECIS,
                CLEARTYPE_QUALITY, DEFAULT_PITCH, L"Segoe UI"
            );

            SendMessageW(hInstallBtn, WM_SETFONT, reinterpret_cast<WPARAM>(segoeFont), TRUE);
            return 0;
        }

        case WM_CTLCOLORSTATIC: {
            const auto hdcStatic = reinterpret_cast<HDC>(wParam);

            SetTextColor(hdcStatic, GetSysColor(COLOR_WINDOWTEXT));
            SetBkColor(hdcStatic, GetSysColor(COLOR_WINDOW));

            return reinterpret_cast<INT_PTR>(GetSysColorBrush(COLOR_WINDOW));
        }

        case WM_COMMAND: {
            const int wmId = LOWORD(wParam);

            if (wmId == ID_BTN_INSTALL) {
                DestroyWindow(hText);
                hText = nullptr;
                DestroyWindow(hInstallBtn);
                hInstallBtn = nullptr;

                const auto hInstance = GetModuleHandle(nullptr);

                hText = CreateWindowW(
                    L"STATIC",
                    L"Zitierstil wird installiert...",
                    WS_CHILD | WS_VISIBLE,
                    140, 20,
                    350, 200,
                    hwnd,
                    nullptr,
                    nullptr,
                    nullptr);

                SendMessage(hText, WM_SETFONT, reinterpret_cast<WPARAM>(segoeFont), TRUE);

                hProgressBar = CreateWindowW(
                    PROGRESS_CLASS,
                    nullptr,
                    WS_CHILD | WS_VISIBLE,
                    140, 50,
                    380, 20,
                    hwnd,
                    nullptr,
                    hInstance,
                    nullptr
                );

                SendMessage(hProgressBar, PBM_SETRANGE, 0, MAKELPARAM(0, 100));

                const auto vBtnPos = CalcSingleButtonPosition(hwnd, 110, 30, 25);

                hCancelBtn = CreateWindowW(
                    L"BUTTON",
                    L"Abbrechen",
                    WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_DEFPUSHBUTTON,
                    vBtnPos.at(0), vBtnPos.at(1),
                    vBtnPos.at(2), vBtnPos.at(3),
                    hwnd,
                    reinterpret_cast<HMENU>(ID_BTN_CANCEL),
                    hInstance,
                    nullptr);

                SendMessageW(hCancelBtn, WM_SETFONT, reinterpret_cast<WPARAM>(segoeFont), TRUE);

                if (!DownloadStyle(hwnd)) {
                    MessageBoxW(hwnd, L"Download fehlgeschlagen!", L"Error", MB_OK | MB_ICONERROR);
                }
            } else if (wmId == ID_BTN_CANCEL) {
                DeleteObject(segoeFont);
                PostQuitMessage(0);
                return 0;
            }
            break;
        }

        case WM_DESTROY:
            DeleteObject(segoeFont);
            PostQuitMessage(0);
            return 0;
        return 0;
        default: ;
    }
    return DefWindowProc(hwnd, uMsg, wParam, lParam);
}