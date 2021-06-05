unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMan;

type
  TFormLogin = class(TForm)
    xpmnfst1: TXPManifest;
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
    lbl3: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation
uses Unit1, Unit2, Unit3, Unit5,Unit4,Unit7;

{$R *.dfm}

procedure TFormLogin.btn2Click(Sender: TObject);
begin
FormDaftar.Show;
FormLogin.Hide;
end;

procedure TFormLogin.btn1Click(Sender: TObject);
var i : Integer; a,b : string;
begin
DM1.Akun_zq.Open;
for i := 1 to DM1.Akun_zq.RecordCount do begin
  a:= DM1.Akun_zq['Username'];
  b:= DM1.Akun_zq['Password'];
  if((edt1.Text=a) and (edt2.Text=b) and (DM1.Akun_zq['Role'] = 'Admin')) then begin
      Application.MessageBox('Login Admin','Info', MB_OK + MB_ICONINFORMATION);
      FormKonsultasi.btn1.Enabled := True;
      FormTabel.edt1.Text := edt1.Text;
      FormTabel.edt2.Text := edt2.Text;
      FormKonsultasi.pnl4.Visible := False;
      FormKonsultasi.lbl6.Caption := 'ADMIN';
      FormKonsultasi.Show;
      FormLogin.Hide;
      Break;
  end
  else if ((edt1.Text=a)and(edt2.Text=b)and(DM1.Akun_zq['Role'] = 'User')) then begin
      Application.MessageBox('Login Pengguna','Info', MB_OK + MB_ICONINFORMATION);
      FormKonsultasi.btn1.Enabled := False;
      FormTabel.edt1.Text := edt1.Text;
      FormTabel.edt2.Text := edt2.Text;
      FormKonsultasi.pnl4.Visible := True;
      FormKonsultasi.lbl6.Caption := 'PENGGUNA';
      FormKonsultasi.lbl2.Caption := 'Status Pertanyaan';
      FormKonsultasi.Show;
      FormLogin.Hide;
      Break;
  end
  else if ((edt1.Text <> a)and(edt2.Text <> b)and(i=DM1.Akun_zq.RecordCount)) then begin
    Application.MessageBox('Maaf data tidak valid', 'Konfirmasi',MB_OK + MB_ICONWARNING);
    Break;
  end;
  DM1.Akun_zq.Next;
end;
end;

end.
