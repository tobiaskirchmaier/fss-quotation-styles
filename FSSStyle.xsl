<?xml version="1.0" encoding="utf-8"?>
<!--
    Copyright (C) 2026 Kirchmaier Tobias.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License v3 as published by
    the Free Software Foundation.
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography">
    <xsl:output method="html" encoding="utf-8"/>

    <xsl:variable name="abc" select="'abcdefghijklmnopqrstuvwxyz'" />
    <xsl:variable name="ABC" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

    <xsl:template match="*" mode="outputHtml2">
        <xsl:apply-templates mode="outputHtml"/>
    </xsl:template>

    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="b:Version">
                <xsl:text>1.1-beta</xsl:text>
            </xsl:when>
            <xsl:when test="b:XslVersion">
                <xsl:text>1</xsl:text>
            </xsl:when>

            <xsl:when test="b:OfficeStyleKey">
                <xsl:text>FSS</xsl:text>
            </xsl:when>
            <xsl:when test="b:StyleNameLocalized">
                <xsl:text>FSS</xsl:text>
            </xsl:when>

            <xsl:when test="b:GetImportantFields">
                <b:ImportantFields>
                    <xsl:choose>
                        <xsl:when test="b:GetImportantFields/b:SourceType='Book'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Editor/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Translator/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CountryRegion</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Volume</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Edition</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='BookSection'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Editor/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:BookAuthor/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:BookTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ChapterNumber</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Edition</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='JournalArticle'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Editor/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:JournalName</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Issue</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='ArticleInAPeriodical'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:PeriodicalTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Edition</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Issue</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='ConferenceProceedings'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Editor/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ConferenceName</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Report'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Institution</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ThesisType</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Department</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='SoundRecording'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Composer/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Performer/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Artist/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Medium</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:AlbumTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ProductionCompany</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CountryRegion</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Performance'">
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Medium</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Writer/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Performer/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Theater</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CountryRegion</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Art'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Artist/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Medium</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Institution</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:PublicationTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='DocumentFromInternetSite'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Medium</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:DayAccessed</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:MonthAccessed</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:YearAccessed</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:URL</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='InternetSite'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:InternetSiteTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:URL</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:DayAccessed</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:MonthAccessed</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:YearAccessed</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Film'">
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Distributor</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ProductionCompany</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Medium</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CountryRegion</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Director/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Writer/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Performer/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:ProducerName/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Interview'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Interviewee/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Interviewer/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Compiler/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:BroadcastTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Broadcaster</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Station</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Patent'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Inventor/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CountryRegion</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:PatentNumber</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Type</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='ElectronicSource'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:ProducerName/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Medium</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CountryRegion</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:PublicationTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ProductionCompany</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Case'">
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CaseNumber</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Court</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Counsel/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Reporter</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                        </xsl:when>

                        <xsl:when test="b:GetImportantFields/b:SourceType='Misc'">
                            <b:ImportantField>
                                <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Title</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:ShortTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:PublicationTitle</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Year</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Month</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Day</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:City</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:CountryRegion</xsl:text>
                            </b:ImportantField>
                            <b:ImportantField>
                                <xsl:text>b:Publisher</xsl:text>
                            </b:ImportantField>
                        </xsl:when>
                    </xsl:choose>
                </b:ImportantFields>
            </xsl:when>
        </xsl:choose>

        <xsl:apply-templates select="b:Bibliography"/>
        <xsl:apply-templates select="b:Citation"/>
    </xsl:template>

    <xsl:template match="b:Citation">
        <xsl:choose>
            <xsl:when test="b:NoTitle">
                <xsl:call-template name="FormatSource">
                    <xsl:with-param name="src" select="b:Source" />
                    <xsl:with-param name="mode" select="'Short'" />
                    <xsl:with-param name="pages" select="b:Pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="FormatSource">
                    <xsl:with-param name="src" select="b:Source" />
                    <xsl:with-param name="mode" select="'Long'" />
                    <xsl:with-param name="pages" select="b:Pages" />
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="b:Bibliography">
        <xsl:variable name="webSources" select="b:Source[b:SourceType = 'InternetSite' or b:SourceType = 'SoundRecording' or b:SourceType = 'DocumentFromInternetSite' or b:SourceType = 'ElectronicSource' or b:SourceType = 'Film']" />
        <xsl:variable name="primarySources" select="b:Source[starts-with(translate(b:Comments, $ABC, $abc), 'primär') and (b:SourceType = 'Book' or b:SourceType = 'BookSection' or b:SourceType = 'JournalArticle' or b:SourceType = 'Interview' or b:SourceType = 'Report' or b:SourceType = 'Case' or b:SourceType = 'ArticleInAPeriodical' or b:SourceType = 'Patent' or b:SourceType = 'ConferenceProceedings' or b:SourceType = 'Performance' or b:SourceType = 'Misc')]" />
        <xsl:variable name="secondarySources" select="b:Source[not(starts-with(translate(b:Comments, $ABC, $abc), 'primär')) and (b:SourceType = 'Book' or b:SourceType = 'BookSection' or b:SourceType = 'JournalArticle' or b:SourceType = 'Interview' or b:SourceType = 'Report' or b:SourceType = 'Case' or b:SourceType = 'ArticleInAPeriodical' or b:SourceType = 'Patent' or b:SourceType = 'ConferenceProceedings' or b:SourceType = 'Performance' or b:SourceType = 'Misc')]" />

        <html xmlns="http://www.w3.org/TR/REC-html40">
            <head>
                <style>h2 { font-family: "Calibri Light", Arial, sans-serif; font-size: 13pt; font-weight: normal; color: #2F5597; margin-top: 3pt; margin-bottom: 3pt; line-height: 1.0; }</style>
            </head>
            <body>
                <xsl:if test="$primarySources">
                    <h2>Primärquellen</h2>
                    <xsl:call-template name="SourceList">
                        <xsl:with-param name="sources" select="$primarySources" />
                    </xsl:call-template>
                </xsl:if>
                <xsl:if test="$secondarySources">
                    <h2>Sekundärliteratur</h2>
                    <xsl:call-template name="SourceList">
                        <xsl:with-param name="sources" select="$secondarySources" />
                    </xsl:call-template>
                </xsl:if>
                <xsl:if test="$webSources">
                    <h2>Internet- und mediale Quellen</h2>
                    <xsl:call-template name="SourceList">
                        <xsl:with-param name="sources" select="$webSources" />
                    </xsl:call-template>
                </xsl:if>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="SourceList">
        <xsl:param name="sources" />

        <xsl:for-each select="$sources">
            <xsl:sort select="b:Author/b:Author/b:NameList/b:Person[1]/b:Last | b:Author/b:Author/b:Corporate"/>
            <xsl:sort select="b:Year"/>
            <p class="MsoBibliography" dir="ltr" style="margin-left:.5in;text-indent:-.5in">
                <xsl:call-template name="FormatSource">
                    <xsl:with-param name="src" select="." />
                    <xsl:with-param name="mode" select="'Long'" />
                </xsl:call-template>
            </p>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="FormatSource">
        <xsl:param name="src" />
        <xsl:param name="mode" />
        <xsl:param name="pages" select="''" />

        <xsl:choose>
            <xsl:when test="$src/b:SourceType = 'Book' and $mode = 'Long'">
                <xsl:call-template name="BookLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Book' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'BookSection' and $mode = 'Long'">
                <xsl:call-template name="BookSectionLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'BookSection' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'JournalArticle' and $mode = 'Long'">
                <xsl:call-template name="JournalArticleLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'JournalArticle' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'ArticleInAPeriodical' and $mode = 'Long'">
                <xsl:call-template name="PeriodicalLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'ArticleInAPeriodical' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'ConferenceProceedings' and $mode = 'Long'">
                <xsl:call-template name="ConferenceProceedingsLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'ConferenceProceedings' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Report' and $mode = 'Long'">
                <xsl:call-template name="ReportLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Report' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'InternetSite' and $mode = 'Long'">
                <xsl:call-template name="InternetSiteLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'InternetSite' and $mode = 'Short'">
                <xsl:call-template name="InternetSiteShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'DocumentFromInternetSite' and $mode = 'Long'">
                <xsl:call-template name="InternetDocumentLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'DocumentFromInternetSite' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'ElectronicSource' and $mode = 'Long'">
                <xsl:call-template name="ElectronicSourceLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'ElectronicSource' and $mode = 'Short'">
                <xsl:call-template name="InternetSiteShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Art' and $mode = 'Long'">
                <xsl:call-template name="ArtLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Art' and $mode = 'Short'">
                <xsl:call-template name="ArtShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'SoundRecording' and $mode = 'Long'">
                <xsl:call-template name="SoundRecordingLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'SoundRecording' and $mode = 'Short'">
                <xsl:call-template name="SoundRecordingShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Performance' and $mode = 'Long'">
                <xsl:call-template name="PerformanceLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Performance' and $mode = 'Short'">
                <xsl:call-template name="PerformanceShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Film' and $mode = 'Long'">
                <xsl:call-template name="FilmLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Film' and $mode = 'Short'">
                <xsl:call-template name="PerformanceShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Interview' and $mode = 'Long'">
                <xsl:call-template name="InterviewLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Interview' and $mode = 'Short'">
                <xsl:call-template name="InterviewShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Patent' and $mode = 'Long'">
                <xsl:call-template name="PatentLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Patent' and $mode = 'Short'">
                <xsl:call-template name="PatentShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Case' and $mode = 'Long'">
                <xsl:call-template name="CaseLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Case' and $mode = 'Short'">
                <xsl:call-template name="CaseShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Misc' and $mode = 'Long'">
                <xsl:call-template name="MiscLong">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="$src/b:SourceType = 'Misc' and $mode = 'Short'">
                <xsl:call-template name="BookShort">
                    <xsl:with-param name="src" select="$src" />
                    <xsl:with-param name="pages" select="$pages" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="BookLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayVolume">
            <xsl:with-param name="volume" select="$src/b:Volume" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEdition">
            <xsl:with-param name="edition" select="$src/b:Edition" />
        </xsl:call-template>
        <xsl:call-template name="DisplayTranslators">
            <xsl:with-param name="translators" select="$src/b:Author/b:Translator/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPublisher">
            <xsl:with-param name="publisher" select="$src/b:Publisher" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="BookShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="BookSectionLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayChapter">
            <xsl:with-param name="chapter" select="$src/b:ChapterNumber" />
        </xsl:call-template>
        <xsl:call-template name="DisplayBookAuthors">
            <xsl:with-param name="bookAuthors" select="$src/b:Author/b:BookAuthor/b:NameList" />
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:BookTitle" />
        </xsl:call-template>
        <xsl:if test="count($src/b:Author/b:BookAuthor/b:NameList) &gt; 0 and count($src/b:Author/b:Editor/b:NameList) &gt; 0">
            <xsl:call-template name="DisplayEditors">
                <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayVolume">
            <xsl:with-param name="volume" select="$src/b:Volume" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEdition">
            <xsl:with-param name="edition" select="$src/b:Edition" />
        </xsl:call-template>
        <xsl:call-template name="DisplayTranslators">
            <xsl:with-param name="translators" select="$src/b:Author/b:Translator/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPublisher">
            <xsl:with-param name="publisher" select="$src/b:Publisher" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="JournalArticleLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Publisher) &gt; 0">
                <xsl:value-of select="$src/b:Publisher" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayJournal">
            <xsl:with-param name="journal" select="$src/b:JournalName" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayVolume">
            <xsl:with-param name="volume" select="$src/b:Volume" />
        </xsl:call-template>
        <xsl:call-template name="DisplayIssue">
            <xsl:with-param name="issue" select="$src/b:Issue" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPages">
            <xsl:with-param name="pages" select="$pages" />
        </xsl:call-template>
        <xsl:text>.</xsl:text>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="PeriodicalLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Publisher) &gt; 0">
                <xsl:value-of select="$src/b:Publisher" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:text>, in: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:PeriodicalTitle" />
        </xsl:call-template>
        <xsl:if test="string-length($src/b:Edition) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$src/b:Edition" />
        </xsl:if>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayVolume">
            <xsl:with-param name="volume" select="$src/b:Volume" />
        </xsl:call-template>
        <xsl:call-template name="DisplayIssue">
            <xsl:with-param name="issue" select="$src/b:Issue" />
            <xsl:with-param name="prefix" select="', Nr. '" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPages">
            <xsl:with-param name="pages" select="$pages" />
        </xsl:call-template>
        <xsl:text>.</xsl:text>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="ConferenceProceedingsLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Publisher) &gt; 0">
                <xsl:value-of select="$src/b:Publisher" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:text> in: </xsl:text>
        <xsl:if test="count($src/b:Author/b:Editor/b:NameList) &gt; 0">
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$src/b:Author/b:Editor/b:NameList" />
            </xsl:call-template>
            <xsl:text> (Hrsg.): </xsl:text>
        </xsl:if>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:ConferenceName" />
        </xsl:call-template>
        <xsl:call-template name="DisplayVolume">
            <xsl:with-param name="volume" select="$src/b:Volume" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPages">
            <xsl:with-param name="pages" select="$pages" />
        </xsl:call-template>
        <xsl:text>.</xsl:text>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="ReportLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Publisher) &gt; 0">
                <xsl:value-of select="$src/b:Publisher" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayThesis">
            <xsl:with-param name="thesis" select="$src/b:ThesisType" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDepartment">
            <xsl:with-param name="department" select="$src/b:Department" />
        </xsl:call-template>
        <xsl:call-template name="DisplayInstitution">
            <xsl:with-param name="institution" select="$src/b:Institution" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPages">
            <xsl:with-param name="pages" select="$pages" />
        </xsl:call-template>
        <xsl:text>.</xsl:text>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="InternetSiteLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:choose>
                <xsl:when test="string-length($pages) &gt; 0">
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="$pages" />
                    <xsl:text>.</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>.</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:text>, in: </xsl:text>
        <xsl:call-template name="DisplayWebsiteTitle">
            <xsl:with-param name="websiteTitle" select="$src/b:InternetSiteTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayProducers">
            <xsl:with-param name="productionCompany" select="$src/b:ProductionCompany" />
            <xsl:with-param name="producers" select="$src/b:Author/b:ProducerName/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="InternetSiteShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="InternetDocumentLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:if test="string-length($src/b:InternetSiteTitle) &gt; 0">
            <xsl:text>, in: </xsl:text>
            <xsl:call-template name="DisplayWebsiteTitle">
                <xsl:with-param name="websiteTitle" select="$src/b:InternetSiteTitle" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayProducers">
            <xsl:with-param name="productionCompany" select="$src/b:ProductionCompany" />
            <xsl:with-param name="producers" select="$src/b:Author/b:ProducerName/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="ElectronicSourceLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Publisher) &gt; 0">
                <xsl:value-of select="$src/b:Publisher" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:if test="string-length($src/b:PublicationTitle) &gt; 0">
            <xsl:text>, in: </xsl:text>
            <xsl:call-template name="DisplayTitle">
                <xsl:with-param name="title" select="$src/b:PublicationTitle" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayCompilers">
            <xsl:with-param name="compilers" select="$src/b:Author/b:Compiler/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayProducers">
            <xsl:with-param name="productionCompany" select="$src/b:ProductionCompany" />
            <xsl:with-param name="producers" select="$src/b:Author/b:ProducerName/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayVolume">
            <xsl:with-param name="volume" select="$src/b:Volume" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEdition">
            <xsl:with-param name="edition" select="$src/b:Edition" />
        </xsl:call-template>
        <xsl:call-template name="DisplayTranslators">
            <xsl:with-param name="translators" select="$src/b:Author/b:Translator/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="ArtLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Publisher) &gt; 0">
                <xsl:value-of select="$src/b:Publisher" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Artist/b:NameList" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:if test="string-length($src/b:PublicationTitle) &gt; 0">
            <xsl:text>, ausg. in: </xsl:text>
            <xsl:call-template name="DisplayTitle">
                <xsl:with-param name="title" select="$src/b:PublicationTitle" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayInstitution">
            <xsl:with-param name="institution" select="$src/b:Institution" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="ArtShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Artist/b:NameList" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="SoundRecordingLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="authors">
            <xsl:choose>
                <xsl:when test="count($src/b:Author/b:Artist/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Artist/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Performer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Performer/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Composer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Composer/b:NameList" />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:ProductionCompany) &gt; 0">
                <xsl:value-of select="$src/b:ProductionCompany" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="msxsl:node-set($authors)/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Performer/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayAlbum">
            <xsl:with-param name="album" select="$src/b:AlbumTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayRecordingNum">
            <xsl:with-param name="recordingNum" select="$src/b:RecordingNumber" />
        </xsl:call-template>
        <xsl:if test="msxsl:node-set($authors)/b:NameList != $src/b:Author/b:Composer/b:NameList">
            <xsl:call-template name="DisplayComposers">
                <xsl:with-param name="composers" select="$src/b:Author/b:Composer/b:NameList" />
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="msxsl:node-set($authors)/b:NameList != $src/b:Author/b:Performer/b:NameList">
            <xsl:call-template name="DisplayPerformers">
                <xsl:with-param name="performers" select="$src/b:Author/b:Performer/b:NameList" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayConductors">
            <xsl:with-param name="conductors" select="$src/b:Author/b:Conductor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayProducers">
            <xsl:with-param name="producers" select="$src/b:Author/b:ProducerName/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="SoundRecordingShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="authors">
            <xsl:choose>
                <xsl:when test="count($src/b:Author/b:Artist/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Artist/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Performer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Performer/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Composer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Composer/b:NameList" />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="msxsl:node-set($authors)/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Performer/b:Corporate" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="PerformanceLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="authors">
            <xsl:choose>
                <xsl:when test="count($src/b:Author/b:Writer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Writer/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Director/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Director/b:NameList" />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Theater) &gt; 0">
                <xsl:value-of select="$src/b:Theater" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="msxsl:node-set($authors)/b:NameList" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:if test="msxsl:node-set($authors)/b:NameList != $src/b:Author/b:Director/b:NameList">
            <xsl:call-template name="DisplayDirectors">
                <xsl:with-param name="directors" select="$src/b:Author/b:Director/b:NameList" />
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="msxsl:node-set($authors)/b:NameList != $src/b:Author/b:Performer/b:NameList">
            <xsl:call-template name="DisplayPerformers">
                <xsl:with-param name="performers" select="$src/b:Author/b:Performer/b:NameList" />
                <xsl:with-param name="corporate" select="$src/b:Author/b:Performer/b:Corporate" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayProducers">
            <xsl:with-param name="productionCompany" select="$src/b:ProductionCompany" />
            <xsl:with-param name="producers" select="$src/b:Author/b:ProducerName/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="PerformanceShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="authors">
            <xsl:choose>
                <xsl:when test="count($src/b:Author/b:Writer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Writer/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Director/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Director/b:NameList" />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="msxsl:node-set($authors)/b:NameList" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="FilmLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="authors">
            <xsl:choose>
                <xsl:when test="count($src/b:Author/b:Writer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Writer/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Director/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Director/b:NameList" />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Distributor) &gt; 0">
                <xsl:value-of select="$src/b:Distributor" />
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="msxsl:node-set($authors)/b:NameList" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:if test="msxsl:node-set($authors)/b:NameList != $src/b:Author/b:Director/b:NameList">
            <xsl:call-template name="DisplayDirectors">
                <xsl:with-param name="directors" select="$src/b:Author/b:Director/b:NameList" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayPerformers">
            <xsl:with-param name="performers" select="$src/b:Author/b:Performer/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Performer/b:Corporate" />
        </xsl:call-template>
        <xsl:call-template name="DisplayProducers">
            <xsl:with-param name="productionCompany" select="$src/b:ProductionCompany" />
            <xsl:with-param name="producers" select="$src/b:Author/b:ProducerName/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="InterviewLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="authors">
            <xsl:choose>
                <xsl:when test="count($src/b:Author/b:Compiler/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Compiler/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Editor/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Editor/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Interviewer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Interviewer/b:NameList" />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="datePrefix">
            <xsl:choose>
                <xsl:when test="string-length($src/b:Publisher) &gt; 0">
                    <xsl:value-of select="$src/b:Publisher" />
                    <xsl:text>, </xsl:text>
                </xsl:when>
                <xsl:when test="string-length($src/b:Station) &gt; 0">
                    <xsl:value-of select="$src/b:Station" />
                    <xsl:text>, </xsl:text>
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="msxsl:node-set($authors)/b:NameList" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayBroadcastTitle">
            <xsl:with-param name="title" select="$src/b:BroadcastTitle" />
        </xsl:call-template>
        <xsl:if test="string-length($src/b:Publisher) &gt; 0">
            <xsl:call-template name="DisplayStation">
                <xsl:with-param name="station" select="$src/b:Station" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayBroadcaster">
            <xsl:with-param name="broadcaster" select="$src/b:Broadcaster" />
        </xsl:call-template>
        <xsl:call-template name="DisplayInterviewee">
            <xsl:with-param name="interviewee" select="$src/b:Author/b:Interviewee/b:NameList" />
        </xsl:call-template>
        <xsl:if test="msxsl:node-set($authors)/b:NameList != $src/b:Author/b:Interviewer/b:NameList">
            <xsl:call-template name="DisplayInterviewer">
                <xsl:with-param name="interviewer" select="$src/b:Author/b:Interviewer/b:NameList" />
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="msxsl:node-set($authors)/b:NameList != $src/b:Author/b:Editor/b:NameList">
            <xsl:call-template name="DisplayEditors">
                <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
            </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="DisplayTranslators">
            <xsl:with-param name="translators" select="$src/b:Author/b:Translator/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="prefix" select="$datePrefix" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="InterviewShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="authors">
            <xsl:choose>
                <xsl:when test="count($src/b:Author/b:Compiler/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Compiler/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Editor/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Editor/b:NameList" />
                </xsl:when>
                <xsl:when test="count($src/b:Author/b:Interviewer/b:NameList) &gt; 0">
                    <xsl:copy-of select="$src/b:Author/b:Interviewer/b:NameList" />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:if test="string-length($pages) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$pages" />
            </xsl:if>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="msxsl:node-set($authors)/b:NameList" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="PatentLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Inventor/b:NameList" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayType">
            <xsl:with-param name="type" select="$src/b:Type" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPatentNum">
            <xsl:with-param name="patentNum" select="$src/b:PatentNumber" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayTranslators">
            <xsl:with-param name="translators" select="$src/b:Author/b:Translator/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
            <xsl:with-param name="suffix" select="''" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="PatentShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Inventor/b:NameList" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="CaseLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="corporate">
            <xsl:if test="count($src/b:Author/b:Author/b:NameList) &lt; 1">
                <xsl:choose>
                    <xsl:when test="string-length($src/b:Author/b:Author/b:Corporate) &gt; 0">
                        <xsl:value-of select="$src/b:Author/b:Author/b:Corporate" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$src/b:Court" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="datePrefix">
            <xsl:text>, Urteil </xsl:text>
            <xsl:choose>
                <xsl:when test="string-length($src/b:Day) &gt; 0">
                    <xsl:text>vom </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>von </xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="locationSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="prefix" select="$datePrefix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayCaseNum">
            <xsl:with-param name="caseNum" select="$src/b:CaseNumber" />
        </xsl:call-template>
        <xsl:if test="$corporate != $src/b:Court and string-length($src/b:Court) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$src/b:Court" />
        </xsl:if>
        <xsl:call-template name="DisplayReporter">
            <xsl:with-param name="reporter" select="$src/b:Reporter" />
        </xsl:call-template>
        <xsl:call-template name="DisplayCounsel">
            <xsl:with-param name="counsel" select="$src/b:Author/b:Counsel/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="suffix" select="$locationSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="CaseShort">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="corporate">
            <xsl:if test="count($src/b:Author/b:Author/b:NameList) &lt; 1">
                <xsl:choose>
                    <xsl:when test="string-length($src/b:Author/b:Author/b:Corporate) &gt; 0">
                        <xsl:value-of select="$src/b:Author/b:Author/b:Corporate" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$src/b:Court" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$corporate" />
            <xsl:with-param name="short" select="'true'" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitleShort">
            <xsl:with-param name="title" select="$src/b:Title" />
            <xsl:with-param name="shortTitle" select="$src/b:ShortTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="prefix" select="', '" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="MiscLong">
        <xsl:param name="src" />
        <xsl:param name="pages" />

        <xsl:variable name="locationSuffix">
            <xsl:choose>
                <xsl:when test="string-length($src/b:Publisher) &gt; 0">
                    <xsl:text>: </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>, </xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="datePrefix">
            <xsl:if test="string-length($src/b:Publisher) &gt; 0">
                <xsl:call-template name="DisplayPublisher">
                    <xsl:with-param name="publisher" select="$src/b:Publisher" />
                </xsl:call-template>
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="dateSuffix">
            <xsl:call-template name="DisplayPages">
                <xsl:with-param name="pages" select="$pages" />
            </xsl:call-template>
            <xsl:text>.</xsl:text>
        </xsl:variable>

        <xsl:call-template name="DisplayAuthors">
            <xsl:with-param name="authors" select="$src/b:Author/b:Author/b:NameList" />
            <xsl:with-param name="corporate" select="$src/b:Author/b:Author/b:Corporate" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
        <xsl:call-template name="DisplayTitle">
            <xsl:with-param name="title" select="$src/b:Title" />
        </xsl:call-template>
        <xsl:call-template name="DisplayPublicationTitle">
            <xsl:with-param name="title" select="$src/b:PublicationTitle" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEditors">
            <xsl:with-param name="editors" select="$src/b:Author/b:Editor/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayVolume">
            <xsl:with-param name="volume" select="$src/b:Volume" />
        </xsl:call-template>
        <xsl:call-template name="DisplayEdition">
            <xsl:with-param name="edition" select="$src/b:Edition" />
        </xsl:call-template>
        <xsl:call-template name="DisplayIssue">
            <xsl:with-param name="issue" select="$src/b:Issue" />
        </xsl:call-template>
        <xsl:call-template name="DisplayCompilers">
            <xsl:with-param name="compilers" select="$src/b:Author/b:Compiler/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayTranslators">
            <xsl:with-param name="translators" select="$src/b:Author/b:Translator/b:NameList" />
        </xsl:call-template>
        <xsl:call-template name="DisplayLocation">
            <xsl:with-param name="city" select="$src/b:City" />
            <xsl:with-param name="province" select="$src/b:StateProvince" />
            <xsl:with-param name="country" select="$src/b:CountryRegion" />
            <xsl:with-param name="suffix" select="$locationSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDate">
            <xsl:with-param name="year" select="$src/b:Year" />
            <xsl:with-param name="month" select="$src/b:Month" />
            <xsl:with-param name="day" select="$src/b:Day" />
            <xsl:with-param name="prefix" select="$datePrefix" />
            <xsl:with-param name="suffix" select="$dateSuffix" />
        </xsl:call-template>
        <xsl:call-template name="DisplayMedium">
            <xsl:with-param name="medium" select="$src/b:Medium" />
        </xsl:call-template>
        <xsl:call-template name="DisplayDownload">
            <xsl:with-param name="dayAccessed" select="$src/b:DayAccessed" />
            <xsl:with-param name="monthAccessed" select="$src/b:MonthAccessed" />
            <xsl:with-param name="yearAccessed" select="$src/b:YearAccessed" />
            <xsl:with-param name="doi" select="$src/b:DOI" />
            <xsl:with-param name="url" select="$src/b:URL" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="DisplayAuthors">
        <xsl:param name="authors" />
        <xsl:param name="corporate" />
        <xsl:param name="short" select="'false'" />

        <xsl:choose>
            <xsl:when test="count($authors) &gt; 0 or string-length($corporate) &gt; 0">
                <xsl:choose>
                    <xsl:when test="$short = 'false'">
                        <xsl:call-template name="NameList">
                            <xsl:with-param name="persons" select="$authors" />
                            <xsl:with-param name="corporate" select="$corporate" />
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="NameListShort">
                            <xsl:with-param name="persons" select="$authors" />
                            <xsl:with-param name="corporate" select="$corporate" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>o. A.</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayBookAuthors">
        <xsl:param name="bookAuthors" />
        <xsl:param name="editors" />

        <xsl:text>, in: </xsl:text>
        <xsl:choose>
            <xsl:when test="count($bookAuthors) &gt; 0">
                <xsl:call-template name="NameList">
                    <xsl:with-param name="persons" select="$bookAuthors" />
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="count($editors) &gt; 0">
                <xsl:call-template name="NameList">
                    <xsl:with-param name="persons" select="$editors" />
                </xsl:call-template>
                <xsl:text> (Hrsg.)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>o. A.</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>: </xsl:text>
    </xsl:template>

    <xsl:template name="DisplayEditors">
        <xsl:param name="editors" />

        <xsl:if test="count($editors) &gt; 0">
            <xsl:text>, hrsg. von </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$editors" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayCompilers">
        <xsl:param name="compilers" />

        <xsl:if test="count($compilers) &gt; 0">
            <xsl:text>, red. von </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$compilers" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayTranslators">
        <xsl:param name="translators" />

        <xsl:if test="count($translators) &gt; 0">
            <xsl:text>, übers. von </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$translators" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayProducers">
        <xsl:param name="productionCompany" />
        <xsl:param name="producers" />

        <xsl:if test="count($producers) &gt; 0">
            <xsl:text>, prod. von </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$producers" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="string-length($productionCompany) &gt; 0">
            <text>, </text>
            <xsl:value-of select="$productionCompany" />
            <text> (Prod.)</text>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayComposers">
        <xsl:param name="composers" />

        <xsl:if test="count($composers) &gt; 0">
            <xsl:text>, komp. von </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$composers" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayPerformers">
        <xsl:param name="performers" />
        <xsl:param name="corporate" />

        <xsl:choose>
            <xsl:when test="string-length($corporate) &gt; 0">
                <xsl:text>, interpr. von </xsl:text>
                <xsl:value-of select="$corporate" />
            </xsl:when>
            <xsl:when test="count($performers) &gt; 0">
                <xsl:text>, interpr. von </xsl:text>
                <xsl:call-template name="NameList">
                    <xsl:with-param name="persons" select="$performers" />
                    <xsl:with-param name="smallCaps" select="'false'" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayConductors">
        <xsl:param name="conductors" />

        <xsl:if test="count($conductors) &gt; 0">
            <xsl:text>, dir. von </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$conductors" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayDirectors">
        <xsl:param name="directors" />

        <xsl:if test="count($directors) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$directors" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
            <xsl:text> (Reg.)</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayInterviewee">
        <xsl:param name="interviewee" />

        <xsl:if test="count($interviewee) &gt; 0">
            <xsl:text>, mit </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$interviewee" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayInterviewer">
        <xsl:param name="interviewer" />

        <xsl:if test="count($interviewer) &gt; 0">
            <xsl:text>, interv. von </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$interviewer" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayCounsel">
        <xsl:param name="counsel" />

        <xsl:if test="count($counsel) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:call-template name="NameList">
                <xsl:with-param name="persons" select="$counsel" />
                <xsl:with-param name="smallCaps" select="'false'" />
            </xsl:call-template>
            <xsl:text> (RB)</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template name="NameList">
        <xsl:param name="persons" />
        <xsl:param name="corporate" select="''" />
        <xsl:param name="smallCaps" select="'true'" />

        <xsl:variable name="firstPerson" select="$persons/b:Person[1]" />

        <xsl:choose>
            <xsl:when test="string-length($corporate) &gt; 0">
                <xsl:choose>
                    <xsl:when test="$smallCaps='true'">
                        <span style="font-variant:small-caps">
                            <xsl:value-of select="$corporate" />
                        </span>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$corporate" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="normalize-space($firstPerson/b:Last)!=''">
                    <xsl:for-each select="$persons/b:Person[position() &lt; 3]">
                        <xsl:if test="position() &gt; 1">
                            <xsl:text> &amp; </xsl:text>
                        </xsl:if>
                        <xsl:choose>
                            <xsl:when test="$smallCaps='true'">
                                <span style="font-variant:small-caps">
                                    <xsl:value-of select="b:Last"/>
                                </span>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="b:Last"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:if test="normalize-space(b:First) != ''">
                            <xsl:choose>
                                <xsl:when test="position() &gt; 1 or $smallCaps = 'false'">
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="b:First"/>
                                    <xsl:if test="normalize-space(b:Middle) != ''">
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="b:Middle"/>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>, </xsl:text>
                                    <xsl:value-of select="b:First"/>
                                    <xsl:if test="normalize-space(b:Middle) != ''">
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="b:Middle"/>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:if test="count($persons/b:Person) &gt; 2">
                        <xsl:text> u. a.</xsl:text>
                    </xsl:if>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="NameListShort">
        <xsl:param name="persons" />
        <xsl:param name="corporate" select="''" />

        <xsl:variable name="firstPerson" select="$persons/b:Person[1]" />

        <xsl:choose>
            <xsl:when test="string-length($corporate) &gt; 0">
                <span style="font-variant:small-caps">
                    <xsl:value-of select="$corporate" />
                </span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="normalize-space($firstPerson/b:Last)!=''">
                    <span style="font-variant:small-caps">
                        <xsl:value-of select="$firstPerson/b:Last"/>
                    </span>
                    <xsl:if test="count($persons/b:Person) &gt; 1">
                        <xsl:text> u. a.</xsl:text>
                    </xsl:if>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayTitle">
        <xsl:param name="title" />

        <xsl:choose>
            <xsl:when test="string-length($title) &gt; 0">
                <span style="font-style:italic">
                    <xsl:value-of select="$title" />
                </span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>o. T.</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayTitleShort">
        <xsl:param name="title" />
        <xsl:param name="shortTitle" />

        <xsl:choose>
            <xsl:when test="string-length($shortTitle) &gt; 0">
                <span style="font-style:italic">
                    <xsl:value-of select="$shortTitle" />
                </span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="DisplayTitle">
                    <xsl:with-param name="title" select="$title" />
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayBroadcastTitle">
        <xsl:param name="title" />

        <xsl:if test="string-length($title) &gt; 0">
            <xsl:text>, in: </xsl:text>
            <xsl:call-template name="DisplayTitle">
                <xsl:with-param name="title" select="$title" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayPublicationTitle">
        <xsl:param name="title" />

        <xsl:if test="string-length($title) &gt; 0">
            <xsl:text>, in: </xsl:text>
            <xsl:call-template name="DisplayTitle">
                <xsl:with-param name="title" select="$title" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayStation">
        <xsl:param name="station" />

        <xsl:if test="string-length($station) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$station" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayBroadcaster">
        <xsl:param name="broadcaster" />

        <xsl:if test="string-length($broadcaster) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$broadcaster" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayThesis">
        <xsl:param name="thesis" />

        <xsl:if test="string-length($thesis) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$thesis" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayDepartment">
        <xsl:param name="department" />

        <xsl:if test="string-length($department) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$department" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayInstitution">
        <xsl:param name="institution" />

        <xsl:if test="string-length($institution) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$institution" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayVolume">
        <xsl:param name="volume" />

        <xsl:choose>
            <xsl:when test="string-length($volume) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:text>Bd. </xsl:text>
                <xsl:value-of select="$volume" />
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayType">
        <xsl:param name="type" />

        <xsl:if test="string-length($type) &gt; 0">
            <xsl:text> [</xsl:text>
            <xsl:value-of select="$type" />
            <xsl:text>]</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayCaseNum">
        <xsl:param name="caseNum" />

        <xsl:if test="string-length($caseNum) &gt; 0">
            <xsl:text> – </xsl:text>
            <xsl:value-of select="$caseNum" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayReporter">
        <xsl:param name="reporter" />

        <xsl:if test="string-length($reporter) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$reporter" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayPatentNum">
        <xsl:param name="patentNum" />

        <xsl:if test="string-length($patentNum) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$patentNum" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayEdition">
        <xsl:param name="edition" />

        <xsl:choose>
            <xsl:when test="string-length($edition) &gt; 0">
                <xsl:text>, </xsl:text>
                <xsl:value-of select="$edition" />
                <xsl:text> Aufl.</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayIssue">
        <xsl:param name="issue" />
        <xsl:param name="prefix" select="''" />

        <xsl:if test="string-length($issue) &gt; 0">
            <xsl:choose>
                <xsl:when test="string-length($prefix) &gt; 0">
                    <xsl:value-of select="$prefix" />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>, Ausg. </xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:value-of select="$issue" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayChapter">
        <xsl:param name="chapter" />

        <xsl:choose>
            <xsl:when test="string-length($chapter) &gt; 0">
                <xsl:text> (Kap. </xsl:text>
                <xsl:value-of select="$chapter" />
                <xsl:text>)</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayLocation">
        <xsl:param name="city" />
        <xsl:param name="province" select="''" />
        <xsl:param name="country" select="''" />
        <xsl:param name="suffix" select="': '" />

        <xsl:if test="string-length($city) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$city" />
        </xsl:if>
        <xsl:if test="string-length($province) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$province" />
        </xsl:if>
        <xsl:if test="string-length($country) &gt; 0">
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$country" />
        </xsl:if>
        <xsl:choose>
            <xsl:when test="string-length($city) &lt; 1 and string-length($province) &lt; 1 and string-length($country) &lt; 1">
                <xsl:text>, o. O.</xsl:text>
                <xsl:if test="$suffix != '.'">
                    <xsl:value-of select="$suffix" />
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$suffix" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayPublisher">
        <xsl:param name="publisher" />

        <xsl:if test="string-length($publisher) &gt; 0">
            <xsl:value-of select="$publisher" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayMedium">
        <xsl:param name="medium" />

        <xsl:if test="string-length($medium) &gt; 0">
            <xsl:text> [</xsl:text>
            <xsl:value-of select="$medium" />
            <xsl:text>]</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayDownload">
        <xsl:param name="dayAccessed" />
        <xsl:param name="monthAccessed" />
        <xsl:param name="yearAccessed" />
        <xsl:param name="doi" select="''" />
        <xsl:param name="url" />

        <xsl:variable name="dateAccessed">
            <xsl:value-of select="$dayAccessed" />
            <xsl:value-of select="$monthAccessed" />
            <xsl:value-of select="$yearAccessed" />
        </xsl:variable>

        <xsl:if test="string-length(normalize-space($dateAccessed)) &gt; 0 or string-length($url) &gt; 0 or string-length($doi) &gt; 0">
            <xsl:text> Download</xsl:text>
            <xsl:if test="string-length(normalize-space($dateAccessed)) &gt; 0">
                <xsl:text> </xsl:text>
                <xsl:if test="string-length($dayAccessed) &gt; 0">
                    <xsl:text>am </xsl:text>
                </xsl:if>
                <xsl:call-template name="DisplayDate">
                    <xsl:with-param name="day" select="$dayAccessed" />
                    <xsl:with-param name="month" select="$monthAccessed" />
                    <xsl:with-param name="year" select="$yearAccessed" />
                </xsl:call-template>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="string-length($doi) &gt; 0">
                    <xsl:text>, doi: </xsl:text>
                    <xsl:value-of select="$doi" />
                </xsl:when>
                <xsl:when test="string-length($url) &gt; 0">
                    <xsl:text> unter </xsl:text>
                    <xsl:value-of select="$url" />
                </xsl:when>
            </xsl:choose>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayAlbum">
        <xsl:param name="album" />

        <xsl:if test="string-length($album) &gt; 0">
            <xsl:text>, in: </xsl:text>
            <xsl:call-template name="DisplayTitle">
                <xsl:with-param name="title" select="$album" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayRecordingNum">
        <xsl:param name="recordingNum" />

        <xsl:if test="string-length($recordingNum) &gt; 0">
            <xsl:text>, Aufn. </xsl:text>
            <xsl:value-of select="$recordingNum" />
        </xsl:if>
    </xsl:template>

    <xsl:template name="DisplayJournal">
        <xsl:param name="journal" />

        <xsl:text>, in: </xsl:text>
        <xsl:choose>
            <xsl:when test="string-length($journal) &gt; 0">
                <xsl:value-of select="$journal" />
            </xsl:when>
            <xsl:otherwise>
                o. N.
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayWebsiteTitle">
        <xsl:param name="websiteTitle" />

        <xsl:choose>
            <xsl:when test="string-length($websiteTitle) &gt; 0">
                <xsl:value-of select="$websiteTitle" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>o. T.</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayYear">
        <xsl:param name="year" />
        <xsl:param name="prefix" select="', '" />

        <xsl:if test="string-length($prefix) &gt; 0">
            <xsl:value-of select="$prefix" />
        </xsl:if>
        <xsl:choose>
            <xsl:when test="string-length($year)>0">
                <xsl:value-of select="$year" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>o. J.</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayDate">
        <xsl:param name="day" select="''" />
        <xsl:param name="month" select="''" />
        <xsl:param name="year" select="''" />
        <xsl:param name="prefix" select="''" />
        <xsl:param name="suffix" select="''" />

        <xsl:if test="string-length($prefix) &gt; 0">
            <xsl:value-of select="$prefix" />
        </xsl:if>
        <xsl:if test="string-length($day) &gt; 0">
            <xsl:value-of select="$day" />
            <xsl:text>.</xsl:text>
            <xsl:choose>
                <xsl:when test="string-length($month) &lt; 1">
                    <xsl:text> o. M. </xsl:text>
                </xsl:when>
                <xsl:when test="string-length($month) &gt; 2">
                    <xsl:text> </xsl:text>
                </xsl:when>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="string-length($month) &gt; 0">
            <xsl:value-of select="$month" />
            <xsl:choose>
                <xsl:when test="string-length($month) &lt; 3 and string-length($day) &gt; 0">
                    <xsl:text>.</xsl:text>
                </xsl:when>
                <xsl:when test="string-length($month) &lt; 3">
                    <xsl:text>/</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text> </xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="string-length($year)>0">
                <xsl:value-of select="$year" />
                <xsl:if test="string-length($suffix) &gt; 0">
                    <xsl:value-of select="$suffix" />
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>o. J.</xsl:text>
                <xsl:if test="string-length($suffix) &gt; 0 and $suffix != '.'">
                    <xsl:value-of select="$suffix" />
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="DisplayPages">
        <xsl:param name="pages" />

        <xsl:if test="string-length($pages) &gt; 0">
            <xsl:text>, S. </xsl:text>
            <xsl:value-of select="$pages" />
        </xsl:if>
    </xsl:template>

    <xsl:template match="text()" />
</xsl:stylesheet>