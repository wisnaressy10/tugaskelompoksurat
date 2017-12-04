unit ufi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, frxDBSet, frxExportPDF, StdCtrls, ExtCtrls,ShellAPI;

type
  Tmasuk2 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn1: TButton;
    frxPDFExport1: TfrxPDFExport;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    frxprvw1: TfrxPreview;
    procedure frxrprt1BeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DelFilesFrom(Directory, Filemask : string; DelSubDirs : Boolean);
function waktu: string;
  end;

var
  masuk2: Tmasuk2;

implementation

uses
  Unit1, dm, ufi1;

{$R *.dfm}

procedure Tmasuk2.DelFilesFrom(Directory, Filemask: string;
  DelSubDirs: Boolean);
var Sourcelst : string;
  FOS : TSHFileOpStruct;
begin
  FillChar(FOS, SizeOf(FOS), 0);
  FOS.Wnd := Application.MainForm.Handle;
  FOS.wFunc := FO_DELETE;
  Sourcelst := Directory+'\'+Filemask+#0;
  FOS.pFrom := PChar(Sourcelst);
  if not DelSubDirs then
  FOS.fFlags := FOS.fFlags or FOF_FILESONLY;
  FOS.fFlags := FOS.fFlags or FOF_NOCONFIRMATION;
  SHFileOperation(FOS);
end;

function Tmasuk2.waktu: string;
var tgl : TDateTime;
begin
tgl :=now();
Result:= FormatDateTime('yyyy', tgl);
end;

procedure Tmasuk2.frxrprt1BeforePrint(Sender: TfrxReportComponent);
var img : TfrxComponent;
begin
  try
    img:=frxrprt1.FindObject('Picture1');
    TfrxPictureView(img).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
    '\lGambar\'+DataModule1.tabelufi.FieldValues['Image']);
    except
      ShowMessage('Objek Tidak DItemukan');
    end;
end;

procedure Tmasuk2.FormShow(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'PreviewScanPdfufi.fr3');
  frxrprt1.FileName:=ExtractFilePath(Application.ExeName)+'PreviewScanPdfufi.fr3';
  frxrprt1.ShowReport();
end;

procedure Tmasuk2.btn1Click(Sender: TObject);
var namapdf:string;
var PDFku: TfrxCustomExportFilter;
lokasihapus : string;
begin
with DataModule1.z_ufi do
begin
    if asalScan = 0 then
  begin
  namapdf := 'Surat Masuk'+masuk.Edt1.Text+masuk.Edt2.Text+'.pdf';
  PDFku := TfrxCustomExportFilter(frxPDFExport1);
  PDFku.ShowDialog := False;
  PDFku.FileName := ExtractFilePath(Application.ExeName)+'\lPDF\'+namapdf;
  frxrprt1.PrepareReport(false);
  frxrprt1.Export(PDFku);
  masuk.lbl5.Caption := namapdf;
  end;

  DataModule1.tabelufi.Clear;
  lokasihapus := (ExtractFilePath(Application.ExeName)+'\lGambar\');
  DelFilesFrom(lokasihapus, '*.*', False);
  namapdf := 'Surat Masuk'+masuk.Edt1.Text+masuk.Edt2.Text+'.pdf';
  DataModule1.z_ufi.Active:=True;
  DataModule1.z_ufi.Append;
  DataModule1.z_ufi.FieldByName('nama_file').AsString := namapdf;
  DataModule1.z_ufi.Post;
  masuk2.Close;
end;
end;
end.
