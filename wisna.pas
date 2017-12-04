unit wisna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DelphiTwain, DBCtrls, Grids, DBGrids, jpeg, ShellAPI;

type
  Ttlelang1 = class(TForm)
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    btn3: TButton;
    DelphiTwain1: TDelphiTwain;
    lbl4: TLabel;
    img1: TImage;
    lbl5: TLabel;
    lbl6: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DelphiTwain1TwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function NamaGambar : string;
  end;

var
  tlelang1: Ttlelang1;
  JPGku: TJPEGImage;
  asalScan: Integer;

implementation

uses
  dm, wisna2;

{$R *.dfm}

procedure Ttlelang1.btn2Click(Sender: TObject);
begin
tlelang2.showmodal;
end;

procedure Ttlelang1.btn1Click(Sender: TObject);
var
  sourceIndex : Integer;
  source : TTwainSource;
begin
  with DataModule1.tabelwisna do
  begin
  DelphiTwain1.LibraryLoaded :=True;
  DelphiTwain1.SourceManagerLoaded :=True;
  sourceIndex := DelphiTwain1.SelectSource();

  if(sourceIndex <> -1) then
  begin
    source :=DelphiTwain1.Source[sourceIndex];
    source.Loaded := True;
    source.Enabled := True;
  end;
  end;
  end;

procedure Ttlelang1.DelphiTwain1TwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
var Lokasi, Gambar : string;
begin
  Img1.Picture.Assign(Image);
  Cancel := True;
  Gambar := NamaGambar;
  Lokasi := ExtractFilePath(Application.ExeName)+'\kGambar\';
  JPGku := TJPEGImage.Create;
  JPGku.Assign(Img1.Picture.Bitmap);
  JPGku.SaveToFile(Lokasi+Gambar);
  JPGku.Free;
  DataModule1.tabelwisna.Append;
  DataModule1.tabelwisna['Image'] := Gambar;
  DataModule1.tabelwisna.Post;
end;


procedure Ttlelang1.btn3Click(Sender: TObject);
begin
if DataModule1.tabelwisna.IsEmpty then
ShowMessage('Data Kosong') else
DataModule1.tabelwisna.Delete;
end;

function Ttlelang1.NamaGambar: string;
var
  tgl, bln, thn, konversi, nom : string;
begin
  konversi := DateToStr(Now);
  tgl := Copy(konversi,1,2);
  bln := Copy(konversi,4,2);
  thn := Copy(konversi,7,2);
  nom := IntToStr(DataModule1.tabelwisna.RecordCount);
  Result := 'IMG'+tgl+bln+thn+nom+'.jpeg';
end;

end.
