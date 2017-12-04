object masuk2: Tmasuk2
  Left = 359
  Top = 230
  Width = 810
  Height = 401
  Caption = 'Surat Masuk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = -8
    Top = 0
    Width = 801
    Height = 57
    Color = clWhite
    TabOrder = 0
    object btn1: TButton
      Left = 56
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Simpan ke pdf'
      TabOrder = 0
      OnClick = btn1Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 56
    Width = 793
    Height = 305
    Caption = 'pnl2'
    Color = clWhite
    TabOrder = 1
    object frxprvw1: TfrxPreview
      Left = 120
      Top = 0
      Width = 673
      Height = 305
      OutlineVisible = False
      OutlineWidth = 120
      ThumbnailVisible = False
      UseReportHints = True
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 568
    Top = 80
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxprvw1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43069.036885868050000000
    ReportOptions.LastChange = 43069.036885868050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxrprt1BeforePrint
    Left = 624
    Top = 80
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataModule1.dsufi
    BCDToCurrency = False
    Left = 688
    Top = 80
  end
end
