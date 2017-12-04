unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, PdfViewer, ExtCtrls;

type
  Tmenu = class(TForm)
    Panel1: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl1: TLabel;
    PdfViewer1: TPdfViewer;
    Panel2: TPanel;
    Panel3: TPanel;
    lbl2: TLabel;
    cbb1: TComboBox;
    dbgrd1: TDBGrid;
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu: Tmenu;

implementation

uses diki, rio1, hadi1, wisna, ufi1;

{$R *.dfm}

procedure Tmenu.btn2Click(Sender: TObject);
begin
keluar.showmodal;
end;

procedure Tmenu.btn5Click(Sender: TObject);
begin
pelepasan.showmodal;
end;

procedure Tmenu.btn3Click(Sender: TObject);
begin
lelang.ShowModal;
end;

procedure Tmenu.btn4Click(Sender: TObject);
begin
tlelang1.showmodal;
end;

procedure Tmenu.btn1Click(Sender: TObject);
begin
masuk.showmodal;
end;

end.
