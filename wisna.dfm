object tlelang1: Ttlelang1
  Left = 230
  Top = 168
  Width = 865
  Height = 480
  Caption = 'surat lelang diterima'
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
      Top = 144
      Width = 401
      Height = 297
    end
    object dbgrd1: TDBGrid
      Left = 8
      Top = 16
      Width = 385
      Height = 120
      DataSource = DataModule1.dswisna
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
      Top = 64
      Width = 57
      Height = 13
      Caption = 'Kode terima'
    end
    object lbl2: TLabel
      Left = 88
      Top = 96
      Width = 48
      Height = 13
      Caption = 'Nama unit'
    end
    object lbl3: TLabel
      Left = 88
      Top = 128
      Width = 30
      Height = 13
      Caption = 'status'
    end
    object lbl4: TLabel
      Left = 112
      Top = 16
      Width = 3
      Height = 13
    end
    object lbl5: TLabel
      Left = 72
      Top = 224
      Width = 3
      Height = 13
    end
    object lbl6: TLabel
      Left = 56
      Top = 24
      Width = 356
      Height = 23
      Caption = 'INPUT DATA SURAT TERIMA LELANG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt1: TEdit
      Left = 176
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 176
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btn1: TButton
      Left = 72
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Pindai'
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 168
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Lihat Hasil'
      TabOrder = 3
      OnClick = btn2Click
    end
    object edt3: TEdit
      Left = 176
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object btn3: TButton
      Left = 264
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 5
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
    Left = 512
    Top = 336
  end
end
