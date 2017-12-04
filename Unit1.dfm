object menu: Tmenu
  Left = 254
  Top = 47
  Width = 888
  Height = 568
  Caption = 'Arsip Surat Dinas Pekerjaan Umum'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 273
    Color = clWhite
    TabOrder = 0
    object lbl1: TLabel
      Left = 40
      Top = 40
      Width = 191
      Height = 23
      Caption = 'INPUT DATA SURAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn1: TButton
      Left = 64
      Top = 88
      Width = 137
      Height = 25
      Caption = 'SURAT DINAS MASUK'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 64
      Top = 120
      Width = 137
      Height = 25
      Caption = 'SURAT DINAS KELUAR'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 64
      Top = 152
      Width = 137
      Height = 25
      Caption = 'SURAT DAFTAR LELANG'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 64
      Top = 184
      Width = 137
      Height = 25
      Caption = 'SURAT LELANG DITERIMA'
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 64
      Top = 216
      Width = 137
      Height = 25
      Caption = 'SURAT PEMBEBASAN LAHAN'
      TabOrder = 4
      OnClick = btn5Click
    end
  end
  object PdfViewer1: TPdfViewer
    Left = 272
    Top = 56
    Width = 561
    Height = 473
    About = 'Synactis PDF Viewer version 1.0'
    AutoOpen = True
    Copies = 1
    EndPage = 0
    FitMode = vmFit
    LayoutMode = lmDontCare
    PageMode = pmStandard
    ShowPrintDialog = True
    ShowScrollBars = True
    ShowToolBar = True
    ShrinkToMargins = True
    StartPage = 1
  end
  object Panel2: TPanel
    Left = 272
    Top = 0
    Width = 569
    Height = 57
    Caption = 'ARSIP SURAT DINAS PEKERJAAN UMUM'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 272
    Width = 273
    Height = 273
    Color = clBtnHighlight
    TabOrder = 3
    object lbl2: TLabel
      Left = 48
      Top = 24
      Width = 182
      Height = 23
      Caption = 'PENCARIAN ARSIP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbb1: TComboBox
      Left = 72
      Top = 56
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Surat Dinas Masuk'
        'Surat Dinas Keluar'
        'Surat Daftar Lelang'
        'Surat Lelang Diterima'
        'Surat Pembebasan Lahan')
    end
    object dbgrd1: TDBGrid
      Left = 32
      Top = 88
      Width = 224
      Height = 120
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nama File'
          Visible = True
        end>
    end
  end
end
