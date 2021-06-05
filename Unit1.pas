unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, SMDBGrid, XPMan, jpeg,
  Buttons;

type
  TFormKonsultasi = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    mmo1: TMemo;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    pnl2: TPanel;
    lbl3: TLabel;
    btn4: TButton;
    btn5: TButton;
    smdbgrd1: TSMDBGrid;
    xpmnfst1: TXPManifest;
    img1: TImage;
    pnl3: TPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    img2: TImage;
    btn6: TButton;
    lbl6: TLabel;
    img3: TImage;
    pnl4: TPanel;
    img4: TImage;
    mmo2: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPertanyaan;
    procedure CariPenyakit;

  public
    { Public declarations }
  end;

var
  FormKonsultasi: TFormKonsultasi;

implementation
uses Unit2, Unit4, Unit5, Unit6;
{$R *.dfm}

procedure TFormKonsultasi.btn1Click(Sender: TObject);
begin
FormKonsultasi.Hide;
FormTabel.Show;
end;

procedure TFormKonsultasi.FormActivate(Sender: TObject);
begin
DM1.TabelAktif(true);
mmo1.Lines.Clear;
end;

procedure TFormKonsultasi.ShowPertanyaan;
begin
  lbl3.Caption := DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
end;

procedure TFormKonsultasi.btn4Click(Sender: TObject);
var s: string;
begin
  s := DM1.Pertanyaan_zq.FieldByName('KodePertanyaan').AsString + ' - ' +
 DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
 mmo1.Lines.Add(s);
 //----------------------------------------
 if not DM1.Pertanyaan_zq.Eof then begin
    DM1.Pertanyaan_zq.Next;
    ShowPertanyaan;
 end
 else begin
    CariPenyakit;
 end;
end;

procedure TFormKonsultasi.btn5Click(Sender: TObject);
begin
  DM1.Pertanyaan_zq.Next;
  ShowPertanyaan;
  if DM1.Pertanyaan_zq.Eof then begin
    CariPenyakit;
  end;
end;

procedure TFormKonsultasi.btn2Click(Sender: TObject);
begin
  FormDataPasien.edt1.Clear;
  FormDataPasien.edt2.Clear;
  FormDataPasien.edt3.Clear;
  FormDataPasien.edt4.Clear;
  mmo2.Clear;
  img4.Hide;
  //FormDataPasien.Show;
  //FormKonsultasi.Hide;
  mmo1.Lines.Clear;
  DM1.Pertanyaan_zq.First;
  ShowPertanyaan;
  btn4.Visible := True;
  btn5.Visible := True;
  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := 'select * from tabelrule';
  DM1.pRule_zq.Active := True;
  btn4.Enabled := True;
  btn5.Enabled := btn4.Enabled;
end;
procedure TFormKonsultasi.CariPenyakit;
var
s,s1,Penyakit,ss,Str,gj,sqlt,Memo,Img: string;
i,j: Integer; mystringlist: TStringList;
begin
s := 'SELECT * FROM tabelrule WHERE kodepertanyaan1 = ';
s1 := '';
for i := 0 to mmo1.Lines.Count - 1 do begin
  s1 := s1 + (Trim(copy(mmo1.Lines[i], 1, 3)) + ', ');
  //s1 := s1 + ' ' + QuotedStr(Trim(copy(mmo1.Lines[i], 1, 3)) + ',');
end;
if Length(s1) > 0 then
  Delete(s1, Length(s1)-1, Length(s1));
ss := s1;
s1 := QuotedStr(s1);
DM1.pRule_zq.Active := False;
DM1.pRule_zq.SQL.Text := s + s1;
DM1.pRule_zq.Active := True;
if DM1.pRule_zq.RecordCount = 0 then begin
 Application.MessageBox('Maaf, tidak ada penyakit yang terdeteksi', 'Keterangan', MB_OK + MB_ICONWARNING);
 Penyakit := 'Tidak Terdeteksi';

end else if DM1.pRule_zq.RecordCount = 1 then begin
      Str := 'Penyakit '+ DM1.pRule_zq['namapenyakit'] + ' Terdeteksi';
      Application.MessageBox(PChar(Str), 'Info', MB_OK + MB_ICONINFORMATION);
      Penyakit := DM1.pRule_zq['namapenyakit'];
      mmo1.Lines.Clear;
      lbl2.Caption := 'Hasil Pakar';
      mmo1.Lines.Add('Catatan Gejala : ');
      mystringlist:=TStringList.Create;
      mystringlist.Delimiter:='.';
      mystringlist.DelimitedText:=ss;
      for j:=0 to mystringlist.Count-1 do begin
        sqlt := 'SELECT * FROM tabelgejala WHERE KodeGejala= ';
        gj := mystringlist[j];
        gj[1] := 'G';
        if Length(gj)>3 then
          Delete(gj, Length(gj), Length(gj));
        DM1.Gejala_zq.Active := False;
        DM1.Gejala_zq.SQL.Text := sqlt + QuotedStr(gj);
        DM1.Gejala_zq.Active := True;
        mmo1.Lines.Add('- ' + DM1.Gejala_zq['NamaGejala']);
      end;
      mmo1.Lines.Add('Terdeteksi '+Penyakit);

end else if DM1.pRule_zq.RecordCount > 1 then begin
  Application.MessageBox('Terdapat beberapa penyakit yang mungkin di diagnosa.', 'Info', MB_OK +
  MB_ICONINFORMATION);
  Penyakit := 'Tidak Spesifik';
  end;
  btn4.Enabled := False;
  btn5.Enabled := False;
  DM1.Pasien_zq.Open; DM1.Pasien_zq.Append;
  DM1.Pasien_zq.FieldByName('Nama').AsString := DM1.Akun_zq['Nama'];
  DM1.Pasien_zq.FieldByName('Umur').AsString := DM1.Akun_zq['Umur'];
  DM1.Pasien_zq.FieldByName('Pekerjaan').AsString := DM1.Akun_zq['Pekerjaan'];
  DM1.Pasien_zq.FieldByName('No_Telpon').AsString := DM1.Akun_zq['No_Telpon'];
  DM1.Pasien_zq.FieldByName('Diagnosa').AsString := Penyakit;
  Memo:='Database\Info\'+Penyakit + '.txt';
  Img:='Database\Info\'+Penyakit + '.bmp';
  mmo2.Lines.LoadFromFile(Memo);
  img4.Picture.LoadFromFile(Img);
  img4.Show;
  DM1.Pasien_zq.ApplyUpdates;
end;

procedure TFormKonsultasi.btn3Click(Sender: TObject);
begin
 Close;
end;

procedure TFormKonsultasi.img2Click(Sender: TObject);
var i : Integer; a,b : string;
begin
DM1.Akun_zq.Open;
for i := 1 to DM1.Akun_zq.RecordCount do begin
  a:= DM1.Akun_zq['Username'];
  b:= DM1.Akun_zq['Password'];
  if((edt1.Text=a)and(edt2.Text=b)) then begin
      Application.MessageBox('Login Admin','Info', MB_OK + MB_ICONINFORMATION);
      btn1.Enabled := True;
      FormTabel.edt1.Text := edt1.Text;
      FormTabel.edt2.Text := edt2.Text;
  end
  else begin
    Application.MessageBox('Maaf data tidak valid', 'Konfirmasi',MB_OK + MB_ICONWARNING);
  end;
  DM1.Akun_zq.Next;
end;
end;
procedure TFormKonsultasi.btn6Click(Sender: TObject);
begin
Application.MessageBox('Nama : Ivan Pakpahan' + #13#10 + 
  'Email  : ivanpakpahanchrst@gmail.com' + #13#10 + '2021',
  'Credit', MB_OK + MB_ICONINFORMATION + MB_DEFBUTTON2);
end;

end.

