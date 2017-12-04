unit ufi1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DelphiTwain, DBCtrls, Grids, DBGrids, jpeg,ShellAPI;

type
  Tmasuk = class(TForm)
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    DelphiTwain1: TDelphiTwain;
    lbl4: TLabel;
    lbl3: TLabel;
    img1: TImage;
    lbl5: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DelphiTwain1TwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function NamaGambar:string;
  end;

var
  masuk: Tmasuk;
  JPGku: TJPEGImage;
  asalScan: Integer;

implementation

uses dm, ufi;

{$R *.dfm}

function Tmasuk.NamaGambar: string;
var
  tgl, bln, thn, konversi, nom : string;
begin
  konversi := DateToStr(Now);
  tgl := Copy(konversi,1,2);
  bln := Copy(konversi,4,2);
  thn := Copy(konversi,7,2);
  nom := IntToStr(DataModule1.tabelufi.RecordCount);
  Result :='IMG'+nom+'.jpeg';
end;

procedure Tmasuk.btn1Click(Sender: TObject);
var
  sourceIndex : Integer;
  source : TTwainSource;
begin
  with DataModule1.tabelufi do
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

procedure Tmasuk.btn2Click(Sender: TObject);
begin
MASUK2.showmodal;
end;

procedure Tmasuk.btn3Click(Sender: TObject);
begin
if DataModule1.tabelufi.IsEmpty then
ShowMessage('Data Kosong') else
DataModule1.tabelufi.Delete;
end;

procedure Tmasuk.DelphiTwain1TwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
var Lokasi, Gambar : string;
begin
  Img1.Picture.Assign(Image);
  Cancel := True;
  Gambar := NamaGambar;
  Lokasi := ExtractFilePath(Application.ExeName)+'\lGambar\';
  JPGku := TJPEGImage.Create;
  JPGku.Assign(Img1.Picture.Bitmap);
  JPGku.SaveToFile(Lokasi+Gambar);
  JPGku.Free;
  DataModule1.tabelufi.Append;
  DataModule1.tabelufi['Image'] := Gambar;
  DataModule1.tabelufi.Post;
end;

end.
