program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormKonsultasi},
  Unit2 in 'Unit2.pas' {FormTabel},
  Unit3 in 'Unit3.pas' {TabelRule},
  Unit4 in 'Unit4.pas' {DM1: TDataModule},
  Unit5 in 'Unit5.pas' {FormDataPasien},
  Unit6 in 'Unit6.pas' {FormLogin},
  Unit7 in 'Unit7.pas' {FormDaftar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormKonsultasi, FormKonsultasi);
  Application.CreateForm(TFormTabel, FormTabel);
  Application.CreateForm(TTabelRule, TabelRule);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFormDataPasien, FormDataPasien);
  Application.CreateForm(TFormDaftar, FormDaftar);
  Application.Run;
end.
