unit Unit4;

interface

uses
  SysUtils, Classes, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDM1 = class(TDataModule)
    con1: TZConnection;
    Gejala_zq: TZQuery;
    Penyakit_zq: TZQuery;
    Pertanyaan_zq: TZQuery;
    Rule_zq: TZQuery;
    pRule_zq: TZQuery;
    Gejala_ds: TDataSource;
    Penyakit_ds: TDataSource;
    Pertanyaan_ds: TDataSource;
    Rule_ds: TDataSource;
    pRule_ds: TDataSource;
    strngfldRule_zqKodeRule: TStringField;
    strngfldRule_zqkodepertanyaan1: TStringField;
    strngfldRule_zqkodepenyakit: TStringField;
    strngfldRule_zqnamapenyakit: TStringField;
    Akun_zq: TZQuery;
    Akun_ds: TDataSource;
    Pasien_zq: TZQuery;
    Paasien_ds: TDataSource;
  private
    { Private declarations }

  public
    { Public declarations }
    procedure TabelAktif(b:Boolean);
  end;

var
  DM1: TDM1;

implementation
uses Unit1, Unit2, Unit3, Unit5,Unit6,Unit7;
{$R *.dfm}
procedure TDM1.TabelAktif(b:Boolean);
begin
    Gejala_zq.Active := b;
    Penyakit_zq.Active := b;
    Pertanyaan_zq.Active := b;
    pRule_zq.Active := b;
end;
end.
