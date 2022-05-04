unit U_difal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_difal = class(TForm)
    StaticText2: TStaticText;
    txt_base_icms_difal: TEdit;
    StaticText1: TStaticText;
    cb_uf_origem: TComboBox;
    StaticText3: TStaticText;
    cb_uf_destino: TComboBox;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    edt_estadual: TEdit;
    edt_interestadual: TEdit;
    Btn_limpar_difal: TButton;
    Btn_calc_difal: TButton;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    EDT_ALIQ_DIFAL_FINAL: TEdit;
    Edt_total_difal: TEdit;
    procedure cb_uf_origemChange(Sender: TObject);
    procedure cb_uf_destinoChange(Sender: TObject);
    procedure txt_base_icms_difalExit(Sender: TObject);
    procedure edt_estadualExit(Sender: TObject);
    procedure edt_interestadualExit(Sender: TObject);
    procedure Btn_limpar_difalClick(Sender: TObject);
    procedure Btn_calc_difalClick(Sender: TObject);
    procedure txt_base_icms_difalKeyPress(Sender: TObject; var Key: Char);
    procedure edt_estadualKeyPress(Sender: TObject; var Key: Char);
    procedure edt_interestadualKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_difal: Tfrm_difal;

implementation

{$R *.dfm}

procedure Tfrm_difal.Btn_calc_difalClick(Sender: TObject);
var base_icms_difal, icms_inter,icms_estadual , resultado_aliquota,
resultado_difal: real;
begin

//calculando o valor de icms difal

    base_icms_difal := strtofloat(txt_base_icms_difal.text);
   icms_estadual := strtofloat (edt_estadual.text);
   icms_inter := strtofloat (edt_interestadual.text);
   EDT_ALIQ_DIFAL_FINAL.text := FormatFloat('',
   (StrToFloat(edt_estadual.text) - StrToFloat(edt_interestadual.text)));
     resultado_aliquota :=  strtofloat(EDT_ALIQ_DIFAL_FINAL.text);
   resultado_difal :=  base_icms_difal * resultado_aliquota/100;
    Edt_total_difal.text := floattostr (resultado_difal);
  Edt_total_difal.text := FormatFloat('0,.00', resultado_difal);


end;


procedure Tfrm_difal.Btn_limpar_difalClick(Sender: TObject);
begin
var r:integer;
begin
 for r := 0 to    frm_difal.ComponentCount-1 do
 if components[r] is tedit then
 begin
    tedit(components[r]).text := '0';
   end;
   for r := 0 to  frm_difal.ComponentCount-1 do
 if components[r] is TComboBox then
 begin
    TComboBOX(components[r]).text := '';
end;
end;
end;

procedure Tfrm_difal.cb_uf_destinoChange(Sender: TObject);
begin
 {IF (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'AC')then
  begin
    EDT_ALIQ_DIFAL_FINAL.text := '0';
    showmessage('Não haverá calculo do Difal entre os mesmos Estados!');
  end
  else }
begin
if cb_uf_destino.text = 'RJ' then
  edt_interestadual.text :='20';
  if cb_uf_destino.text = 'AC' then
  edt_interestadual.text :='17';
  if cb_uf_destino.text = 'AL' then
  edt_interestadual.text :='17';
  if cb_uf_destino.text = 'AM' then
  edt_interestadual.text :='18';
  if cb_uf_destino.text = 'AP' then
  edt_interestadual.text :='18';
  if cb_uf_destino.text = 'BA' then
  edt_interestadual.text :='18';
  if cb_uf_destino.text = 'CE' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'DF' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'ES' then
  edt_interestadual.text :='17';

  if cb_uf_destino.text = 'GO' then
  edt_interestadual.text :='17';

  if cb_uf_destino.text = 'MA' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = '17' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'MS' then
  edt_interestadual.text :='17';

  if cb_uf_destino.text = 'MG' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'PA' then
  edt_interestadual.text :='17';

  if cb_uf_destino.text = 'PB' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'PR' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'PE' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'PI' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'RN' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'RS' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'RO' then
  edt_interestadual.text :='17,5';

  if cb_uf_destino.text = 'RR' then
  edt_interestadual.text :='17';

  if cb_uf_destino.text = 'SC' then
  edt_interestadual.text :='17';

  if cb_uf_destino.text = 'SP' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'SE' then
  edt_interestadual.text :='18';

  if cb_uf_destino.text = 'TO' then
  edt_interestadual.text :='18';

  Btn_calc_difal.Enabled := True;
Btn_limpar_difal.enabled := True;
end;

end;







procedure Tfrm_difal.cb_uf_origemChange(Sender: TObject);
begin
if cb_uf_origem.text = 'RJ' then
  edt_estadual.text :='20';
  if cb_uf_origem.text = 'AC' then
  edt_estadual.text :='17';
  if cb_uf_origem.text = 'AL' then
  edt_estadual.text :='17';
  if cb_uf_origem.text = 'AM' then
  edt_estadual.text :='18';
  if cb_uf_origem.text = 'AP' then
  edt_estadual.text :='18';
  if cb_uf_origem.text = 'BA' then
  edt_estadual.text :='18';
  if cb_uf_origem.text = 'CE' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'DF' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'ES' then
  edt_estadual.text :='17';

  if cb_uf_origem.text = 'GO' then
  edt_estadual.text :='17';

  if cb_uf_origem.text = 'MA' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = '17' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'MS' then
  edt_estadual.text :='17';

  if cb_uf_origem.text = 'MG' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'PA' then
  edt_estadual.text :='17';

  if cb_uf_origem.text = 'PB' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'PR' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'PE' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'PI' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'RN' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'RS' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'RO' then
  edt_estadual.text :='17,5';

  if cb_uf_origem.text = 'RR' then
  edt_estadual.text :='17';

  if cb_uf_origem.text = 'SC' then
  edt_estadual.text :='17';

  if cb_uf_origem.text = 'SP' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'SE' then
  edt_estadual.text :='18';

  if cb_uf_origem.text = 'TO' then
  edt_estadual.text :='18';


end;

procedure Tfrm_difal.edt_estadualExit(Sender: TObject);
begin
if (edt_estadual.text='') then
begin
showmessage('Deve ser inserido uma alíquota de ICMS');
edt_estadual.setfocus;
edt_estadual.text := ('0');
end;
end;

procedure Tfrm_difal.edt_estadualKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

procedure Tfrm_difal.edt_interestadualExit(Sender: TObject);
begin
if (edt_interestadual.text='') then
begin
showmessage('Deve ser inserido uma alíquota de ICMS');
edt_interestadual.setfocus;
edt_interestadual.text := ('0');
end;
end;

procedure Tfrm_difal.edt_interestadualKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

procedure Tfrm_difal.txt_base_icms_difalExit(Sender: TObject);
begin
if (txt_base_icms_difal.text='') then
begin
showmessage('Deve ser inserido uma base de ICMS');
txt_base_icms_difal.setfocus;
txt_base_icms_difal.text := ('0');
end;
end;

procedure Tfrm_difal.txt_base_icms_difalKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

end.
