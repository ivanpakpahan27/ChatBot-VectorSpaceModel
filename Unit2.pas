unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, ExtCtrls, SMDBCtrl, Mask,
  DBCtrls, XPMan, jpeg;

type
  TFormTabel = class(TForm)
    lbl1: TLabel;
    smdbgrd1: TSMDBGrid;
    smdbgrd2: TSMDBGrid;
    smdbgrd3: TSMDBGrid;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    smdbnvgtr1: TSMDBNavigator;
    smdbnvgtr2: TSMDBNavigator;
    smdbnvgtr3: TSMDBNavigator;
    dbedtKodePenyakit: TDBEdit;
    dbedtNamaPenyakit: TDBEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtKodeGejala: TDBEdit;
    dbedtNamaGejala: TDBEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtKodePertanyaan: TDBEdit;
    dbedtPertanyaan: TDBEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    btn1: TButton;
    btn2: TButton;
    xpmnfst1: TXPManifest;
    img1: TImage;
    lbl11: TLabel;
    lbl12: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn3: TButton;
    lbl13: TLabel;
    smdbgrd4: TSMDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabel: TFormTabel;

implementation
uses Unit1, Unit3, Unit4;

{$R *.dfm}

procedure TFormTabel.btn1Click(Sender: TObject);
begin
FormTabel.Close;
FormKonsultasi.Show;
end;

procedure TFormTabel.btn2Click(Sender: TObject);
begin
  TabelRule.Show;
  FormTabel.Close;
end;

procedure TFormTabel.FormActivate(Sender: TObject);
begin
  DM1.TabelAktif(True)
end;

procedure TFormTabel.btn3Click(Sender: TObject);
begin
DM1.Akun_zq.Edit;
DM1.Akun_zq['Password'] := edt2.Text;
DM1.Akun_zq.Post;
Application.MessageBox('Password di ubah','Info', MB_OK + MB_ICONINFORMATION);
end;

end.
