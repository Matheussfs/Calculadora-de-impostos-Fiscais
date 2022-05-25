unit U_ICMSTELA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRM_TELA_ICMS = class(TForm)
    Panel1: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    txt_base_icms: TEdit;
    Txt_aliq_icms: TEdit;
    cb_uf: TComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    Btn_limpar_icms: TButton;
    Btn_calcular_icms: TButton;
    edt_resultado_icms: TEdit;
    procedure BTN_CALCULAR_IPIClick(Sender: TObject);
    procedure Btn_calcular_icmsClick(Sender: TObject);
    procedure Btn_limpar_icmsClick(Sender: TObject);
    procedure cb_ufChange(Sender: TObject);
    procedure txt_base_icmsKeyPress(Sender: TObject; var Key: Char);
    procedure Txt_aliq_icmsKeyPress(Sender: TObject; var Key: Char);
    procedure txt_base_icmsExit(Sender: TObject);
    procedure Txt_aliq_icmsExit(Sender: TObject);
    procedure cb_ufKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  var
//vari�veis num�ricas
  base_icms: real;
  aliq_icms: real;
  resultado: real;
    { Public declarations }
  end;

var
  FRM_TELA_ICMS: TFRM_TELA_ICMS;

implementation

{$R *.dfm}

uses U_calculo_ipi;

procedure TFRM_TELA_ICMS.Btn_calcular_icmsClick(Sender: TObject);

var
//vari�veis num�ricas
  base_icms: real;
  aliq_icms: real;
  resultado: real;
  base_icms_base: real;

begin
//calculando o valor de icms
    base_icms := strtofloat (txt_base_icms.text);
    aliq_icms := strtofloat (Txt_aliq_icms.text);
    resultado :=  base_icms * aliq_icms/100;
    edt_resultado_icms.text := floattostr (resultado);
    edt_resultado_icms.text := FormatFloat('0,.00', resultado);
end;

procedure TFRM_TELA_ICMS.BTN_CALCULAR_IPIClick(Sender: TObject);
begin
 application.createform (TFRM_calculo_ipi, frm_calculo_ipi);
  FRM_calculo_ipi.showmodal;
end;

//configurando o bot�o de limpar, preenchendo vazio em tudo ap�s o clique
procedure TFRM_TELA_ICMS.Btn_limpar_icmsClick(Sender: TObject);
var i:integer;
begin
 for i := 0 to    FRM_TELA_ICMS.ComponentCount-1 do
 if components[i] is tedit then
 begin
    tedit(components[i]).text := '0';
   end;
   for i := 0 to  FRM_TELA_ICMS.ComponentCount-1 do
 if components[i] is TComboBox then
 begin
    TComboBOX(components[i]).text := '';
 end;
      Btn_calcular_icms.Enabled := FALSE;
      Btn_limpar_icms.enabled := FALSE;
end;

procedure TFRM_TELA_ICMS.cb_ufChange(Sender: TObject);
//preenchendo a aliuqota de icms de acordo com a UF
begin
  if cb_uf.text = 'RJ' then
  Txt_aliq_icms.text :='20';
  if cb_uf.text = 'AC' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'AL' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'AM' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'AP' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'BA' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'CE' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'DF' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'ES' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'GO' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'MA' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = '17' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'MS' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'MG' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'PA' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'PB' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'PR' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'PE' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'PI' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'RN' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'RS' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'RO' then
  Txt_aliq_icms.text :='17,5';
  if cb_uf.text = 'RR' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'SC' then
  Txt_aliq_icms.text :='17';
  if cb_uf.text = 'SP' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'SE' then
  Txt_aliq_icms.text :='18';
  if cb_uf.text = 'TO' then
  Txt_aliq_icms.text :='18';

     Btn_calcular_icms.Enabled := True;
      Btn_limpar_icms.enabled := True;
end;

procedure TFRM_TELA_ICMS.cb_ufKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

procedure TFRM_TELA_ICMS.Txt_aliq_icmsExit(Sender: TObject);
{prote��o para n�o deixar o tedit de base de icms vazio,
deve ser colocado no evento onexit}
begin
if (Txt_aliq_icms.text='') then
begin
showmessage('Deve ser inserido uma al�quota de ICMS');
Txt_aliq_icms.setfocus;
Txt_aliq_icms.text := ('0');
end;
end;

procedure TFRM_TELA_ICMS.Txt_aliq_icmsKeyPress(Sender: TObject; var Key: Char);

{prote��o para n�o deixar preencher letras no tedit.
Deve ser colocado no evento onkeypress }
begin
if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

procedure TFRM_TELA_ICMS.txt_base_icmsExit(Sender: TObject);
{prote��o para n�o deixar o tedit de base de icms vazio,
deve ser colocado no evento onexit}
begin
if (txt_base_icms.text='') then
begin
showmessage('Deve ser inserido uma base de ICMS');
txt_base_icms.setfocus;
txt_base_icms.text := ('0');
end;
end;


procedure TFRM_TELA_ICMS.txt_base_icmsKeyPress(Sender: TObject; var Key: Char);
{prote��o para n�o deixar preencher letras no tedit.
Deve ser colocado no evento onkeypress}
begin
 if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

end.
