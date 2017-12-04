unit wisna2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, frxDBSet, frxExportPDF, StdCtrls, ExtCtrls,ShellAPI;

type
  Ttlelang2 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn1: TButton;
    frxPDFExport1: TfrxPDFExport;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    frxprvw1: TfrxPreview;
    procedure FormShow(Sender: TObject);
    procedure frxrprt1BeforePrint(Sender: TfrxReportComponent);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DelFilesFrom(Directory, Filemask : string; DelSubDirs : Boolean);
function waktu: string;
  end;

var
  tlelang2: Ttlelang2;

implementation

uses
  Unit1, dm, wisna;

{$R *.dfm}

procedure Ttlelang2.DelFilesFrom(Directory, Filemask: string;
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

procedure Ttlelang2.FormShow(Sender: TObject);
begin
  frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'PreviewScanPdfwisna.fr3');
  frxrprt1.FileName:=ExtractFilePath(Application.ExeName)+'PreviewScanPdfwisna.fr3';
  frxrprt1.ShowReport();
  end;

function Ttlelang2.waktu: string;
var tgl : TDateTime;
begin
tgl :=now();
Result:= FormatDateTime('yyyy', tgl);
end;
procedure Ttlelang2.frxrprt1BeforePrint(Sender: TfrxReportComponent);
var img : TfrxComponent;
begin
  try
    img:=frxrprt1.FindObject('Picture1');
    TfrxPictureView(img).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
    '\kGambar\'+DataModule1.tabelwisna.FieldValues['Image']);
    except
      ShowMessage('Objek Tidak DItemukan');
    end;
end;
procedure Ttlelang2.btn1Click(Sender: TObject);
var namapdf:string;
var PDFku: TfrxCustomExportFilter;
lokasihapus : string;
begin
with DataModule1.z_wisnar do
begin
    if asalScan = 0 then
  begin
  namapdf := tlelang1.Edt1.Text+'-'+tlelang1.Edt2.Text+'-'+waktu+ ' -Surat-terima-lelang.pdf';
  PDFku := TfrxCustomExportFilter(frxPDFExport1);
  PDFku.ShowDialog := False;
  PDFku.FileName := ExtractFilePath(Application.ExeName)+'\kPDF\'+namapdf;
  frxrprt1.PrepareReport(false);
  frxrprt1.Export(PDFku);
  tlelang1.lbl5.Caption := namapdf;
  end;

  DataModule1.tabelwisna.Clear;
  lokasihapus := (ExtractFilePath(Application.ExeName)+'\Gambar_scan\');
  DelFilesFrom(lokasihapus, '*.*', False);
  namapdf := 'Surat Terima Lelang'+tlelang1.Edt1.Text+tlelang1.Edt2.Text+'.pdf';
  DataModule1.z_wisnar.Active:=True;
  DataModule1.z_wisnar.Append;
  DataModule1.z_wisnar.FieldByName('nama_file').AsString := namapdf;
  DataModule1.z_wisnar.Post;
  tlelang2.Close;
end;
end;

end.
