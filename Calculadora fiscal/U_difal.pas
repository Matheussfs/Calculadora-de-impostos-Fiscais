unit U_difal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls,ShellAPI, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tfrm_difal = class(TForm)
    Panel1: TPanel;
    StaticText2: TStaticText;
    txt_base_icms_difal: TEdit;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cb_uf_origem: TComboBox;
    StaticText3: TStaticText;
    cb_uf_destino: TComboBox;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    edt_estadual: TEdit;
    edt_interestadual: TEdit;
    Panel3: TPanel;
    Btn_limpar_difal: TButton;
    Btn_calc_difal: TButton;
    btn_editar: TButton;
    Panel4: TPanel;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    EDT_ALIQ_DIFAL_FINAL: TEdit;
    Edt_total_difal: TEdit;
    SpeedButton1: TSpeedButton;
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
    procedure btn_editarClick(Sender: TObject);
    procedure cb_uf_origemKeyPress(Sender: TObject; var Key: Char);
    procedure cb_uf_destinoKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edt_estadualChange(Sender: TObject);
    procedure difal_duplo;
    PROCEDURE DIFAL_NORMAL;
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

begin
if (cb_uf_origem.text ='MG') or (cb_uf_origem.text ='BA') or
(cb_uf_origem.text ='MS') or (cb_uf_origem.text ='PA') or
(cb_uf_origem.text ='PI')  or (cb_uf_origem.text ='PR') or
(cb_uf_origem.text ='RS') or (cb_uf_origem.text ='SC') OR
(cb_uf_origem.text ='TO') OR  (cb_uf_origem.text ='SE')
then
begin
difal_duplo;
end;

if  (cb_uf_origem.text ='AC') or (cb_uf_origem.text ='AL') or
(cb_uf_origem.text ='AM') or (cb_uf_origem.text ='CE') or
(cb_uf_origem.text ='AP') or (cb_uf_origem.text ='DF') or
(cb_uf_origem.text ='ES')  or (cb_uf_origem.text ='GO') or
(cb_uf_origem.text ='MA') or (cb_uf_origem.text ='MT') OR
(cb_uf_origem.text ='PB') OR  (cb_uf_origem.text ='RN') or
(cb_uf_origem.text ='RO') OR  (cb_uf_origem.text ='PE') or
(cb_uf_origem.text ='RJ') OR  (cb_uf_origem.text ='RR') or
(cb_uf_origem.text ='SP') then
BEGIN
difal_normal;
END;



end;


procedure Tfrm_difal.btn_editarClick(Sender: TObject);
//Configurando o bot�o de editar al�quota
begin
 edt_estadual.Enabled := True;
edt_interestadual.enabled := True;
cb_uf_origem.text := 'N/A';
cb_uf_destino.TEXT :=  'N/A';
end;

procedure Tfrm_difal.Btn_limpar_difalClick(Sender: TObject);

//configurando o bot�o de limpar
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
{Aplicando prote��o para que n�o haja c�lculo do DIFAL quando o combobox
cb_uf_origem.text for igual ao combobox cb_uf_destino.text}
begin
 IF (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'AL')
  OR (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'AP')
  OR (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'BA')
  OR (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'AM')
  OR (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'DF')
  OR (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'MA')
  OR (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'PI')
  OR (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'SE')
  OR (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'TO')
 OR (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'MG')
 OR (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'PB')
 OR (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'PR')
 OR (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'PE')
 OR (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'RJ')
 OR (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'RN')
 OR (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'RS')
 OR (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'RO')
 OR (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'SC')
 OR (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'SP')
then
  begin
    EDT_ALIQ_DIFAL_FINAL.text := '0';
    showmessage('N�o haver� c�lculo do Difal entre os mesmos Estados! Verifique.');
  end;

 {Aplicando Al�quota para o c�lculo do DIFAL no edt_interestadual.text
 referente a ufs que tributem entre si em 12%}
  begin
  IF (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'AC') and (cb_uf_destino.text = 'RS')

  OR (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'RJ')
  OR (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'AL') and (cb_uf_destino.text = 'TO')

  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'AM') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'AP') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'BA') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'CE') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'DF') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'ES') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'GO') and (cb_uf_destino.text = 'RS')


  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'MA') and (cb_uf_destino.text = 'RS')


  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'MT') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'MS') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'SP')

  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'PA') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'PB') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'SP')

  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'PE') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'PI') and (cb_uf_destino.text = 'RS')

  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'RN') and (cb_uf_destino.text = 'MT')

  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'SP')

  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'SP')

  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'RO') and (cb_uf_destino.text = 'MT')

  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'RR') and (cb_uf_destino.text = 'MT')

  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'SP')

  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'SC')

  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'TO')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'SE') and (cb_uf_destino.text = 'MT')

  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'RJ')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'MG')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'PR')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'SC')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'SP')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'RS')
  or (cb_uf_origem.text = 'TO') and (cb_uf_destino.text = 'MT') THEN
  begin edt_interestadual.text := '12';
  end

   {Aplicando Al�quota para o c�lculo do DIFAL no edt_interestadual.text
 referente a ufs que tributem entre si em 7%}

   else
    begin
  if (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'MG') and (cb_uf_destino.text = 'TO')

  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'PR') and (cb_uf_destino.text = 'TO')


  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'RS') and (cb_uf_destino.text = 'TO')


  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'RJ') and (cb_uf_destino.text = 'TO')


  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'SC') and (cb_uf_destino.text = 'TO')

  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'AC')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'AL')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'AM')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'BA')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'CE')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'DF')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'ES')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'GO')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'MA')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'MT')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'MS')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'PA')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'PE')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'PB')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'PI')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'RN')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'RO')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'RR')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'SE')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'AP')
  or (cb_uf_origem.text = 'SP') and (cb_uf_destino.text = 'TO') THEN
  edt_interestadual.text := '7';
  end;
  end;
Btn_calc_difal.Enabled := True;
Btn_limpar_difal.enabled := True;
end;

procedure Tfrm_difal.cb_uf_destinoKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

procedure Tfrm_difal.cb_uf_origemChange(Sender: TObject);

{Aplicando prote��o para que n�o haja c�lculo do DIFAL quando o combobox
cb_uf_destino.text for igual ao combobox cb_uf_origem.text}

begin
 IF (cb_uf_destino.text = 'AC') and (cb_uf_origem.text = 'AC')
  or (cb_uf_destino.text = 'PA') and (cb_uf_origem.text = 'PA')
  or (cb_uf_destino.text = 'ES') and (cb_uf_origem.text = 'ES')
  or (cb_uf_destino.text = 'GO') and (cb_uf_origem.text = 'GO')
  or (cb_uf_destino.text = 'MT') and (cb_uf_origem.text = 'MT')
  or (cb_uf_destino.text = 'RR') and (cb_uf_origem.text = 'RR')
  or (cb_uf_destino.text = 'MS') and (cb_uf_origem.text = 'MS')
  or (cb_uf_destino.text = 'CE') and (cb_uf_origem.text = 'CE')
  or (cb_uf_destino.text = 'AL') and (cb_uf_origem.text = 'AL')
  OR (cb_uf_destino.text = 'AP') and (cb_uf_origem.text = 'AP')
  OR (cb_uf_destino.text = 'BA') and (cb_uf_origem.text = 'BA')
  OR (cb_uf_destino.text = 'AM') and (cb_uf_origem.text = 'AM')
  OR (cb_uf_destino.text = 'DF') and (cb_uf_origem.text = 'DF')
  OR (cb_uf_destino.text = 'MA') and (cb_uf_origem.text = 'MA')
  OR (cb_uf_destino.text = 'PI') and (cb_uf_origem.text = 'PI')
  OR (cb_uf_destino.text = 'SE') and (cb_uf_origem.text = 'SE')
  OR (cb_uf_destino.text = 'TO') and (cb_uf_origem.text = 'TO')
 OR (cb_uf_destino.text = 'MG') and (cb_uf_origem.text = 'MG')
 OR (cb_uf_destino.text = 'PB') and (cb_uf_origem.text = 'PB')
 OR (cb_uf_destino.text = 'PR') and (cb_uf_origem.text = 'PR')
 OR (cb_uf_destino.text = 'PE') and (cb_uf_origem.text = 'PE')
 OR (cb_uf_destino.text = 'RJ') and (cb_uf_origem.text = 'RJ')
 OR (cb_uf_destino.text = 'RN') and (cb_uf_origem.text = 'RN')
 OR (cb_uf_destino.text = 'RS') and (cb_uf_origem.text = 'RS')
 OR (cb_uf_destino.text = 'RO') and (cb_uf_origem.text = 'RO')
 OR (cb_uf_destino.text = 'SC') and (cb_uf_origem.text = 'SC')
 OR (cb_uf_destino.text = 'SP') and (cb_uf_origem.text = 'SP')
then
  begin
    EDT_ALIQ_DIFAL_FINAL.text := '0';
    showmessage('N�o haver� calculo do Difal entre os mesmos Estados! Verifique.');
  end
  {Aplicando al�quota de icms para cada estado conforme preenchimento
   da cb_uf_origem.text}
  else
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

procedure Tfrm_difal.cb_uf_origemKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

procedure Tfrm_difal.difal_duplo;
var icms_interno,icms_interestadual,base_calculo,base_dupla,
resultado, base_calculo1, base_calculo2,
 base_operacao3, valor_icms_estadual, valor_icms_interestadual: real;
begin

  base_calculo := strtofloat (txt_base_icms_difal.text);
  icms_interno := strtofloat (edt_estadual.text);
  icms_interestadual := strtofloat (edt_interestadual.text);
  resultado := strtofloat (Edt_total_difal.text);

  valor_icms_interestadual := base_calculo * icms_interestadual/100;
  base_calculo1 :=  base_calculo - valor_icms_interestadual;
  base_calculo2 :=  base_calculo1/(1-icms_interno/100);

  valor_icms_estadual :=  base_calculo2 * icms_interno/100;
  resultado :=     valor_icms_estadual - valor_icms_interestadual;

  Edt_total_difal.text := floattostr (resultado);
  Edt_total_difal.text := FormatFloat('0,.00', resultado);

end;

procedure Tfrm_difal.DIFAL_NORMAL;
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

procedure Tfrm_difal.edt_estadualChange(Sender: TObject);
begin
cb_uf_destino.enabled := true;
end;

procedure Tfrm_difal.edt_estadualExit(Sender: TObject);
begin
if (edt_estadual.text='') then
begin
showmessage('Deve ser inserido uma al�quota de ICMS');
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
showmessage('Deve ser inserido uma al�quota de ICMS');
edt_interestadual.setfocus;
edt_interestadual.text := ('0');
end;
end;

procedure Tfrm_difal.edt_interestadualKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9' , ',' , #8]) then Key := #0;
end;

procedure Tfrm_difal.SpeedButton1Click(Sender: TObject);
//configurando bot�o para abrir o site do ajuda, deve ser declarado na user: ShellAPI;

begin
ShellExecute(Handle,'open','https://ajuda.alterdata.com.br/fiscalbase/como-lancar-o-diferencial-de-aliquota-nas-entradas-83045346.html#:~:text=Acesse%20Menu%20Fiscal%20%3E%20Configura%C3%A7%C3%B5es%20e,%2C%20clique%20em%20%22Gravar%22.', '',nil,0);
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
