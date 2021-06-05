unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFormDataPasien = class(TForm)
    img1: TImage;
    btn1: TBitBtn;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    xpmnfst1: TXPManifest;
    lbl5: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataPasien: TFormDataPasien;

implementation
uses Unit1,Unit4;
{$R *.dfm}

procedure TFormDataPasien.btn1Click(Sender: TObject);
begin
FormKonsultasi.Show;
FormDataPasien.Hide;
end;

end.
