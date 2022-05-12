unit U_icms_st;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_icms_st = class(TForm)
    Edt_base_ST: TEdit;
    Edt_vl_icms: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edt_vl_st: TEdit;
    Label5: TLabel;
    Cb_uf: TComboBox;
    Txt_aliq_icms: TEdit;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_icms_st: Tfrm_icms_st;

implementation

{$R *.dfm}

uses U_ICMSTELA, U_Icms_St_Base;

procedure Tfrm_icms_st.Button1Click(Sender: TObject);
begin
FRM_BASE_ST := tFRM_BASE_ST.create(self);
FRM_BASE_ST.showmodal;
end;

procedure Tfrm_icms_st.Button5Click(Sender: TObject);
begin
application.createform (TFRM_TELA_ICMS, frm_tela_icms);
  FRM_TELA_ICMS.borderstyle := bssingle;
  FRM_TELA_ICMS.showmodal;
end;

procedure Tfrm_icms_st.ComboBox1Change(Sender: TObject);
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
end;

end.
