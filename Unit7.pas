unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, ExtCtrls;

type
  TFormDaftar = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    img1: TImage;
    pnl1: TPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    xpmnfst1: TXPManifest;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDaftar: TFormDaftar;

implementation
uses Unit1, Unit2, Unit3, Unit5,Unit6,Unit4;

{$R *.dfm}

procedure TFormDaftar.btn2Click(Sender: TObject);
begin
FormLogin.Show;
FormDaftar.Hide;
end;

procedure TFormDaftar.btn1Click(Sender: TObject);
begin
DM1.Akun_zq.Open;
DM1.Akun_zq.Append;
DM1.Akun_zq.FieldByName('Role').AsString:='User';
DM1.Akun_zq.FieldByName('Username').AsString:=edt5.Text;
DM1.Akun_zq.FieldByName('Password').AsString:=edt6.Text;
DM1.Akun_zq.FieldByName('Nama').AsString:=edt1.Text;
DM1.Akun_zq.FieldByName('Umur').AsString:=edt2.Text;
DM1.Akun_zq.FieldByName('No_Telpon').AsString:=edt4.Text;
DM1.Akun_zq.FieldByName('Pekerjaan').AsString:=edt3.Text;
DM1.Akun_zq.ApplyUpdates;
Application.MessageBox('Data telah masuk kedalam database', '', MB_OK + MB_ICONINFORMATION);
end;

end.
