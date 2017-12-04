object masuk: Tmasuk
  Left = 249
  Top = 206
  Width = 865
  Height = 480
  Caption = 'Surat Masuk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 448
    Top = 0
    Width = 401
    Height = 441
    Color = clWhite
    TabOrder = 0
    object img1: TImage
      Left = 0
      Top = 136
      Width = 401
      Height = 305
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 16
      Width = 385
      Height = 120
      DataSource = DataModule1.dsufi
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 441
    Color = clWhite
    TabOrder = 1
    object lbl1: TLabel
      Left = 88
      Top = 96
      Width = 62
      Height = 13
      Caption = 'Tujuan Surat'
    end
    object lbl2: TLabel
      Left = 88
      Top = 136
      Width = 38
      Height = 13
      Caption = 'Instansi'
    end
    object lbl4: TLabel
      Left = 112
      Top = 16
      Width = 3
      Height = 13
    end
    object lbl3: TLabel
      Left = 72
      Top = 56
      Width = 266
      Height = 23
      Caption = 'INPUT DATA SURAT MASUK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 104
      Top = 216
      Width = 3
      Height = 13
    end
    object edt1: TEdit
      Left = 176
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 176
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btn1: TButton
      Left = 56
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Pindai'
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 160
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Lihat Hasil'
      TabOrder = 3
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 264
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
      OnClick = btn3Click
    end
  end
  object DelphiTwain1: TDelphiTwain
    OnTwainAcquire = DelphiTwain1TwainAcquire
    TransferMode = ttmMemory
    SourceCount = 0
    Info.MajorVersion = 1
    Info.MinorVersion = 0
    Info.Language = tlUserLocale
    Info.CountryCode = 1
    Info.Groups = [tgControl, tgImage]
    Info.VersionInfo = 'Application name'
    Info.Manufacturer = 'Application manufacturer'
    Info.ProductFamily = 'App product family'
    Info.ProductName = 'App product name'
    LibraryLoaded = True
    SourceManagerLoaded = False
    Left = 536
    Top = 368
  end
end
