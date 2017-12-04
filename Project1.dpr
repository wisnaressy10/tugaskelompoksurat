program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {menu},
  dm in 'dm.pas' {DataModule1: TDataModule},
  diki in '..\Tugas perform\diki.pas' {keluar},
  dikipdf in 'dikipdf.pas' {keluar2},
  rio1 in 'rio1.pas' {pelepasan},
  rio2 in 'rio2.pas' {pelepasan2},
  hadi1 in 'hadi1.pas' {lelang},
  hadi2 in 'hadi2.pas' {lelang2},
  wisna in 'wisna.pas' {tlelang1},
  wisna2 in 'wisna2.pas' {tlelang2},
  ufi in 'ufi.pas' {masuk2},
  ufi1 in 'ufi1.pas' {masuk};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmenu, menu);
  Application.CreateForm(Tlelang, lelang);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tkeluar, keluar);
  Application.CreateForm(Tkeluar2, keluar2);
  Application.CreateForm(Tpelepasan, pelepasan);
  Application.CreateForm(Tpelepasan2, pelepasan2);
  Application.CreateForm(Ttlelang1, tlelang1);
  Application.CreateForm(Ttlelang2, tlelang2);
  Application.CreateForm(Tmasuk2, masuk2);
  Application.CreateForm(Tmasuk, masuk);
  Application.Run;
end.
