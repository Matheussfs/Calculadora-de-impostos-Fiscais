unit U_Dime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, ShellApi, Vcl.ExtCtrls;

type
  TFrm_dime = class(TForm)
    Edt_fundo: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    Label4: TLabel;
    Edt_cod_TDD: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Edt_concessao: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel5: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Edt_subtipo: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Edt_base_1: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Edt_icms_exonerado: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel8: TPanel;
    Label15: TLabel;
    SpeedButton7: TSpeedButton;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Panel9: TPanel;
    Label16: TLabel;
    SpeedButton8: TSpeedButton;
    EdT_VL_FUNDES: TEdit;
    Panel10: TPanel;
    Label17: TLabel;
    SpeedButton9: TSpeedButton;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Label18: TLabel;
    Panel11: TPanel;
    Label19: TLabel;
    SpeedButton10: TSpeedButton;
    Label20: TLabel;
    Edt_vl_fundo_social: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Label21: TLabel;
    Panel12: TPanel;
    Label22: TLabel;
    SpeedButton11: TSpeedButton;
    Label23: TLabel;
    Edt_base_devo: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Panel13: TPanel;
    Label24: TLabel;
    SpeedButton12: TSpeedButton;
    Label25: TLabel;
    Edt_icms_exonerado_dev: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Panel15: TPanel;
    Label28: TLabel;
    SpeedButton14: TSpeedButton;
    Label29: TLabel;
    Edt_fumdes: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Label26: TLabel;
    Panel14: TPanel;
    Edt_fundo_social: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Label31: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    SpeedButton13: TSpeedButton;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Panel16: TPanel;
    Label35: TLabel;
    Panel17: TPanel;
    Panel18: TPanel;
    Edt_cred_fundes: TEdit;
    Edt_cred_fundo_social: TEdit;
    Panel19: TPanel;
    Edt_fundes_devido: TEdit;
    Edt_cred_futuro_fumdes: TEdit;
    Edt_recebe_cred: TEdit;
    EDT_devolucao_fumdes: TEdit;
    Edt_recolhimento_fumdes: TEdit;
    Panel20: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Edt_fundo_social_total: TEdit;
    Label44: TLabel;
    Edt_tott: TEdit;
    Label45: TLabel;
    Edt_sald_cred_fundo_social: TEdit;
    Label46: TLabel;
    Edt_tott1: TEdit;
    Label47: TLabel;
    Edt_devolucao_fundo_social: TEdit;
    Panel21: TPanel;
    Label48: TLabel;
    Panel22: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    Label54: TLabel;
    Label55: TLabel;
    EdT_VL_FUNDES2: TEdit;
    EdT_VL_FUNDES3: TEdit;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label56: TLabel;
    Label57: TLabel;
    Edit6: TEdit;
    SpeedButton15: TSpeedButton;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    SpeedButton20: TSpeedButton;
    Label69: TLabel;
    Label70: TLabel;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edt_base_1Exit(Sender: TObject);
    procedure Edt_concessaoExit(Sender: TObject);
    procedure Edt_cod_TDDExit(Sender: TObject);
    procedure Edt_subtipoExit(Sender: TObject);
    procedure Edt_icms_exoneradoExit(Sender: TObject);
    procedure EdT_VL_FUNDESExit(Sender: TObject);
    procedure Edt_vl_fundo_socialExit(Sender: TObject);
    procedure Edt_base_devoExit(Sender: TObject);
    procedure Edt_icms_exonerado_devExit(Sender: TObject);
    procedure Edt_fumdesExit(Sender: TObject);
    procedure Edt_fundo_socialExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit16Exit(Sender: TObject);
    procedure Edit17Exit(Sender: TObject);
    procedure Edit21Exit(Sender: TObject);
    procedure Edit22Exit(Sender: TObject);
    procedure Edit26Exit(Sender: TObject);
    procedure Edit27Exit(Sender: TObject);
    procedure EdT_VL_FUNDES2Exit(Sender: TObject);
    procedure EdT_VL_FUNDES3Exit(Sender: TObject);
    procedure Edit46Exit(Sender: TObject);
    procedure Edit47Exit(Sender: TObject);
    procedure Edit51Exit(Sender: TObject);
    procedure Edit52Exit(Sender: TObject);
    procedure Edit56Exit(Sender: TObject);
    procedure Edit57Exit(Sender: TObject);
    procedure Edit66Exit(Sender: TObject);
    procedure Edit67Exit(Sender: TObject);
    procedure Edit61Exit(Sender: TObject);
    procedure Edit62Exit(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure Edt_cred_fundesExit(Sender: TObject);
    procedure Edt_cred_fundo_socialExit(Sender: TObject);
    procedure Edit23Exit(Sender: TObject);
    procedure Edit24Exit(Sender: TObject);
    procedure Edit25Exit(Sender: TObject);
    procedure Edit28Exit(Sender: TObject);
    procedure Edit29Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edt_fundes_devidoExit(Sender: TObject);
    procedure Edt_recebe_credExit(Sender: TObject);
    procedure EDT_devolucao_fumdesExit(Sender: TObject);
    procedure Edt_recolhimento_fumdesExit(Sender: TObject);
    procedure Edt_cred_futuro_fumdesExit(Sender: TObject);
    procedure Edt_fundo_social_totalExit(Sender: TObject);
    procedure Edt_sald_cred_fundo_socialExit(Sender: TObject);
    procedure Edt_devolucao_fundo_socialExit(Sender: TObject);
    procedure Edt_tottExit(Sender: TObject);
    procedure Edt_tott1Exit(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_dime: TFrm_dime;

implementation

{$R *.dfm}

procedure TFrm_dime.EdT_VL_FUNDES2Exit(Sender: TObject);
var str:string;
begin
  StringReplace(EdT_VL_FUNDES2.text, '.','',[rfReplaceAll]);
  str:= StringReplace(EdT_VL_FUNDES2.text,',','',[RfReplaceAll]);
  EdT_VL_FUNDES2.text := str;

  length( EdT_VL_FUNDES2.text);
  while length (EdT_VL_FUNDES2.text) <17 do
   EdT_VL_FUNDES2.text :='0' + EdT_VL_FUNDES2.text;
end;

procedure TFrm_dime.EdT_VL_FUNDES3Exit(Sender: TObject);
var str:string;
begin
   StringReplace(EdT_VL_FUNDES3.text, '.','',[rfReplaceAll]);
  str:= StringReplace(EdT_VL_FUNDES3.text,',','',[RfReplaceAll]);
  EdT_VL_FUNDES3.text := str;
  length( EdT_VL_FUNDES3.text);
  while length (EdT_VL_FUNDES3.text) <17 do
   EdT_VL_FUNDES3.text :='0' + EdT_VL_FUNDES3.text;
end;

procedure TFrm_dime.EdT_VL_FUNDESExit(Sender: TObject);
var str2:string;
begin
  StringReplace(EdT_VL_FUNDES.text, '.','',[rfReplaceAll]);
  str2:= StringReplace(EdT_VL_FUNDES.text,',','',[RfReplaceAll]);
  EdT_VL_FUNDES.text := str2;
  length( EdT_VL_FUNDES.text);
  while length (EdT_VL_FUNDES.text) <17 do
   EdT_VL_FUNDES.text :='0' + EdT_VL_FUNDES.text;

end;

procedure TFrm_dime.Edt_vl_fundo_socialExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_vl_fundo_social.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_vl_fundo_social.text,',','',[RfReplaceAll]);
  Edt_vl_fundo_social.text := str;
  length( Edt_vl_fundo_social.text);
  while length (Edt_vl_fundo_social.text) <17 do
   Edt_vl_fundo_social.text :='0' + Edt_vl_fundo_social.text;
end;

procedure TFrm_dime.Edt_base_devoExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_base_devo.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_base_devo.text,',','',[RfReplaceAll]);
  Edt_base_devo.text := str;

  length( Edt_base_devo.text);
  while length (Edt_base_devo.text) <17 do
   Edt_base_devo.text :='0' + Edt_base_devo.text;
end;

procedure TFrm_dime.Edt_icms_exonerado_devExit(Sender: TObject);
  var str:string;
begin
   StringReplace(Edt_icms_exonerado_dev.text, '.','',[rfReplaceAll]);
str:= StringReplace(Edt_icms_exonerado_dev.text,',','',[RfReplaceAll]);
Edt_icms_exonerado_dev.text := str;

  length( Edt_icms_exonerado_dev.text);
  while length (Edt_icms_exonerado_dev.text) <17 do
  Edt_icms_exonerado_dev.text :='0' + Edt_icms_exonerado_dev.text;
end;

procedure TFrm_dime.Edt_recebe_credExit(Sender: TObject);
var str:string;
begin
   StringReplace(Edt_recebe_cred.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_recebe_cred.text,',','',[RfReplaceAll]);
  Edt_recebe_cred.text := str;
  length( Edt_recebe_cred.text);
  while length (Edt_recebe_cred.text) <17 do
   Edt_recebe_cred.text :='0' + Edt_recebe_cred.text;
end;

procedure TFrm_dime.Edt_recolhimento_fumdesExit(Sender: TObject);
var str:string;
begin
   StringReplace(Edt_recolhimento_fumdes.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_recolhimento_fumdes.text,',','',[RfReplaceAll]);
  Edt_recolhimento_fumdes.text := str;
  length( Edt_recolhimento_fumdes.text);
  while length (Edt_recolhimento_fumdes.text) <17 do
  Edt_recolhimento_fumdes.text :='0' + Edt_recolhimento_fumdes.text;
end;

procedure TFrm_dime.Edt_devolucao_fundo_socialExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_devolucao_fundo_social.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_devolucao_fundo_social.text,',','',[RfReplaceAll]);
  Edt_devolucao_fundo_social.text := str;

   length( Edt_devolucao_fundo_social.text);
  while length (Edt_devolucao_fundo_social.text) <17 do
   Edt_devolucao_fundo_social.text :='0' + Edt_devolucao_fundo_social.text;
end;

procedure TFrm_dime.Edt_fumdesExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_fumdes.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_fumdes.text,',','',[RfReplaceAll]);
  Edt_fumdes.text := str;

  length( Edt_fumdes.text);
  while length (Edt_fumdes.text) <17 do
  Edt_fumdes.text :='0' + Edt_fumdes.text;
end;

procedure TFrm_dime.Edt_fundes_devidoExit(Sender: TObject);
var str:string;
begin
 StringReplace(Edt_fundes_devido.text, '.','',[rfReplaceAll]);
 str:= StringReplace(Edt_fundes_devido.text,',','',[RfReplaceAll]);
 Edt_fundes_devido.text := str;
  length( Edt_fundes_devido.text);
  while length (Edt_fundes_devido.text) <17 do
  Edt_fundes_devido.text :='0' + Edt_fundes_devido.text;
end;

procedure TFrm_dime.Edt_fundo_socialExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_fundo_social.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_fundo_social.text,',','',[RfReplaceAll]);
  Edt_fundo_social.text := str;

  length( Edt_fundo_social.text);
  while length (Edt_fundo_social.text) <17 do
  Edt_fundo_social.text :='0' + Edt_fundo_social.text;
end;

procedure TFrm_dime.Edt_fundo_social_totalExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_fundo_social_total.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_fundo_social_total.text,',','',[RfReplaceAll]);
  Edt_fundo_social_total.text := str;

  length( Edt_fundo_social_total.text);
  while length (Edt_fundo_social_total.text) <17 do
  Edt_fundo_social_total.text :='0' + Edt_fundo_social_total.text;
end;

procedure TFrm_dime.Button1Click(Sender: TObject);
var
  F1, F2, F3, Total: real;
  F4, f5, f6, Total2 :real;
  df1, df2, df3, totdf: real;
  df4, df5, df6, totdff: real;
  t1, t2, t3, tot, tot1:real;
  t4, t5, t6, tott, tott1:real;
  t519, t512, t529, t511, t522, t521:real;

begin
  F1 := strtoint (EdT_VL_FUNDES.text);
  F2 := strtoint (EdT_VL_FUNDES2.text);
  F3 := strtoint (EdT_VL_FUNDES3.text);
  Total := F1 + F2 + F3;
  Edt_fundes_devido.text := floattostr (total);
  length(Edt_fundes_devido.text);
  while length (Edt_fundes_devido.text) <17 do
  Edt_fundes_devido.text :='0' + Edt_fundes_devido.text;

   Edt_recebe_cred.text := Edt_cred_fundes.text;
     length(Edt_recebe_cred.text);
  while length (Edt_recebe_cred.text) <17 do
  Edt_recebe_cred.text :='0' + Edt_recebe_cred.text;

   Edt_sald_cred_fundo_social.text := Edt_cred_fundo_social.text;
    length(Edt_sald_cred_fundo_social.text);
  while length (Edt_sald_cred_fundo_social.text) <17 do
  Edt_sald_cred_fundo_social.text :='0' + Edt_sald_cred_fundo_social.text;

  F4 := strtoint (Edt_vl_fundo_social.text);
  F5 := strtoint (Edit46.text);
  F6 := strtoint (Edit47.text);
  Total2 := F4 + F5 + F6;
  Edt_fundo_social_total.text := floattostr (total2);
  length( Edt_fundo_social_total.text);
  while length ( Edt_fundo_social_total.text) <17 do
   Edt_fundo_social_total.text :='0' +  Edt_fundo_social_total.text;

  df1:= strtoint (Edt_fumdes.text);
  df2:= strtoint (Edit66.text);
  df3:= strtoint (Edit67.text);
  totdf := df1+ df2+ df3;
  EDT_devolucao_fumdes.text := floattostr (totdf);
  length(EDT_devolucao_fumdes.text);
  while length (EDT_devolucao_fumdes.text) <17 do
 EDT_devolucao_fumdes.text :='0' + EDT_devolucao_fumdes.text;

  df4:= strtoint (Edt_fundo_social.text);
  df5:= strtoint (Edit61.text);
  df6:= strtoint (Edit62.text);
  totdff := df4+ df5+ df6;
  Edt_devolucao_fundo_social.text := floattostr (totdff);
  length(Edt_devolucao_fundo_social.text);
  while length (Edt_devolucao_fundo_social.text) <17 do
 Edt_devolucao_fundo_social.text :='0' + Edt_devolucao_fundo_social.text;

 t1 := strtoint (Edt_recebe_cred.text);
 t2 := StrtoInt (Edt_Devolucao_fumdes.text);
 t3 := StrToInt (Edt_fundes_devido.text);
 tot := t1+t2 - t3 ;

  if tot < 0 then tot :=0;
  Edt_cred_futuro_fumdes.text :=floattostr (tot);
    length(Edt_cred_futuro_fumdes.text);
  while length (Edt_cred_futuro_fumdes.text) <17 do
 Edt_cred_futuro_fumdes.text :='0' +Edt_cred_futuro_fumdes.text;

   tot1 := t3 - (t2+t1);
   if tot1 < 0  then tot1 := 0;
 Edt_recolhimento_fumdes.text := floattostr (tot1);
   length(Edt_recolhimento_fumdes.text);
  while length (Edt_recolhimento_fumdes.text) <17 do
 Edt_recolhimento_fumdes.text :='0' +Edt_recolhimento_fumdes.text;

  t4  := strtoint (Edt_fundo_social_total.text);
  t5  := strtoint (Edt_sald_cred_fundo_social.text);
  t6  := strtoint (Edt_devolucao_fundo_social.text);
  tott := (t6+t5) - t4;
  if tott <0 then tott :=0;
  Edt_tott.text := floattostr (tott);
  length(Edt_tott.text);
  while length (Edt_tott.text) <17 do
  Edt_tott.text :='0' +Edt_tott.text;

   tott1 := t4 - (t5+t6);
   if tott1 <0  then tott1  := 0;

  Edt_tott1.text :=  floattostr (Tott1);
  length(Edt_tott1.text);
  while length (Edt_tott1.text) <17 do
 Edt_tott1.text :='0' +Edt_tott1.text;


  t512  := strtoint (Edit25.text);
  t511  := strtoint (Edit24.text);
  t519 := t512 +t511;
  Edit3.text  := floattostr (T519);
  length(Edit3.text);
  while length (Edit3.text) <17 do
 Edit3.text :='0' +Edit3.text;

 T522 := StrtoInt (Edit29.text);
 T521 := StrtoInt (Edit28.text);
 T529 := T521+T522;
Edit6.text := floattostr (T529);
 length(Edit6.text);
  while length (Edit6.text) <17 do
 Edit6.text :='0' +Edit6.text;




end;

procedure TFrm_dime.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.checked = true then
 Edit23.enabled := true;
if CheckBox1.checked = true then
 Edit24.enabled := true;
if CheckBox1.checked = true then
 Edit25.enabled := true;
 if CheckBox1.checked = true then
 Edit28.enabled := true;
 if CheckBox1.checked = true then
 Edit29.enabled := true;


 if CheckBox1.checked = false  then
  Edit23.enabled := false;
if CheckBox1.checked = false then
 Edit24.enabled := false;
if CheckBox1.checked = false then
 Edit25.enabled := false;
 if CheckBox1.checked = false then
 Edit28.enabled := false;
 if CheckBox1.checked = false then
 Edit29.enabled := false;

end;


procedure TFrm_dime.Edit11Exit(Sender: TObject);
begin
length( Edit11.text);
  while length (Edit11.text) <15 do
   Edit11.text :='0' + Edit11.text;
end;

procedure TFrm_dime.Edit12Exit(Sender: TObject);
begin
 length( Edit12.text);
  while length (Edit12.text) <15 do
   Edit12.text :='0' + Edit12.text;
end;

procedure TFrm_dime.Edit16Exit(Sender: TObject);
begin
  length( Edit16.text);
  while length (Edit16.text) <4 do
  Edit16.text :='0' + Edit16.text;
end;

procedure TFrm_dime.Edit17Exit(Sender: TObject);
begin
  length(Edit17.text);
  while length (Edit17.text) <4 do
   Edit17.text :='0' + Edit17.text;
end;

procedure TFrm_dime.Edit21Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit21.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit21.text,',','',[RfReplaceAll]);
  Edit21.text := str;

  length( Edit21.text);
  while length (Edit21.text) <17 do
   Edit21.text :='0' + Edit21.text;
end;

procedure TFrm_dime.Edit22Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit22.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit22.text,',','',[RfReplaceAll]);
  Edit22.text := str;

  length( Edit22.text);
  while length (Edit22.text) <17 do
   Edit22.text :='0' + Edit22.text;
end;

procedure TFrm_dime.Edit23Exit(Sender: TObject);
var str:string;
begin
   StringReplace(Edit23.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit23.text,',','',[RfReplaceAll]);
  Edit23.text := str;

  length( Edit23.text);
  while length (Edit23.text) <17 do
  Edit23.text :='0' + Edit23.text;
end;

procedure TFrm_dime.Edit24Exit(Sender: TObject);
var str:string;
begin
 StringReplace(Edit24.text, '.','',[rfReplaceAll]);
 str:= StringReplace(Edit24.text,',','',[RfReplaceAll]);
 Edit24.text := str;

 length(Edit24.text);
 while length (Edit24.text) <17 do
 Edit24.text :='0' + Edit24.text;
end;

procedure TFrm_dime.Edit25Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit25.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit25.text,',','',[RfReplaceAll]);
  Edit25.text := str;
  length( Edit25.text);
  while length (Edit25.text) <17 do
  Edit25.text :='0' + Edit25.text;
end;

procedure TFrm_dime.Edit26Exit(Sender: TObject);
var str:string;
begin
   StringReplace(Edit26.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit26.text,',','',[RfReplaceAll]);
  Edit26.text := str;

  length( Edit26.text);
  while length (Edit26.text) <17 do
   Edit26.text :='0' + Edit26.text;
end;

procedure TFrm_dime.Edit27Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit27.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit27.text,',','',[RfReplaceAll]);
  Edit27.text := str;

  length( Edit27.text);
  while length (Edit27.text) <17 do
   Edit27.text :='0' + Edit27.text;
end;

procedure TFrm_dime.Edit28Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit28.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit28.text,',','',[RfReplaceAll]);
  Edit28.text := str;

  length( Edit28.text);
  while length (Edit28.text) <17 do
   Edit28.text :='0' + Edit28.text;
end;

procedure TFrm_dime.Edit29Exit(Sender: TObject);
var str:string;
begin
 StringReplace(Edit29.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit29.text,',','',[RfReplaceAll]);
  Edit29.text := str;
  length( Edit29.text);
  while length (Edit29.text) <17 do
   Edit29.text :='0' + Edit29.text;
end;

procedure TFrm_dime.Edit46Exit(Sender: TObject);
var str:string;
begin
   StringReplace(Edit46.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit46.text,',','',[RfReplaceAll]);
  Edit46.text := str;

  length( Edit46.text);
  while length (Edit46.text) <17 do
   Edit46.text :='0' + Edit46.text;
end;

procedure TFrm_dime.Edit47Exit(Sender: TObject);
var str:string;
begin
   StringReplace(Edit47.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit47.text,',','',[RfReplaceAll]);
  Edit47.text := str;

  length( Edit47.text);
  while length (Edit47.text) <17 do
   Edit47.text :='0' + Edit47.text;
end;

procedure TFrm_dime.Edit4Exit(Sender: TObject);
begin
length(Edit4.text);
  while length (Edit4.text) <4 do
   Edit4.text :='0' + Edit4.text;
end;

procedure TFrm_dime.Edit51Exit(Sender: TObject);
  var str:string;
begin
  StringReplace(Edit51.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit51.text,',','',[RfReplaceAll]);
  Edit51.text := str;

  length( Edit51.text);
  while length (Edit51.text) <17 do
   Edit51.text :='0' + Edit51.text;
end;

procedure TFrm_dime.Edit52Exit(Sender: TObject);
  var str:string;
begin
   StringReplace(Edit52.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit52.text,',','',[RfReplaceAll]);
  Edit52.text := str;

  length( Edit52.text);
  while length (Edit52.text) <17 do
   Edit52.text :='0' + Edit52.text;
end;

procedure TFrm_dime.Edit56Exit(Sender: TObject);
  var str:string;
begin
   StringReplace(Edit56.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit56.text,',','',[RfReplaceAll]);
  Edit56.text := str;

  length( Edit56.text);
  while length (Edit56.text) <17 do
   Edit56.text :='0' + Edit56.text;
end;

procedure TFrm_dime.Edit57Exit(Sender: TObject);
var str:string;
begin

  StringReplace(Edit57.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit57.text,',','',[RfReplaceAll]);
  Edit57.text := str;

  length( Edit57.text);
  while length (Edit57.text) <17 do
  Edit57.text :='0' + Edit57.text;
end;

procedure TFrm_dime.Edit5Exit(Sender: TObject);
begin
length(Edit5.text);
  while length (Edit5.text) <4 do
   Edit5.text :='0' + Edit5.text;
end;

procedure TFrm_dime.Edit61Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit61.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit61.text,',','',[RfReplaceAll]);
  Edit61.text := str;

  length( Edit61.text);
  while length (Edit61.text) <17 do
   Edit61.text :='0' + Edit61.text;
end;

procedure TFrm_dime.Edit62Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit62.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit62.text,',','',[RfReplaceAll]);
  Edit62.text := str;

  length( Edit62.text);
  while length (Edit62.text) <17 do
   Edit62.text :='0' + Edit62.text;
end;

procedure TFrm_dime.Edit66Exit(Sender: TObject);
var str:string;
begin
   StringReplace(Edit66.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit66.text,',','',[RfReplaceAll]);
  Edit66.text := str;

  length( Edit66.text);
  while length (Edit66.text) <17 do
  Edit66.text :='0' + Edit66.text;
end;

procedure TFrm_dime.Edit67Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edit67.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edit67.text,',','',[RfReplaceAll]);
  Edit67.text := str;

  length( Edit67.text);
  while length (Edit67.text) <17 do
  Edit67.text :='0' + Edit67.text;
end;

procedure TFrm_dime.Edt_base_1Exit(Sender: TObject);
 var str:string;
begin
StringReplace(Edt_base_1.text, '.','',[rfReplaceAll]);
str:= StringReplace(Edt_base_1.text,',','',[RfReplaceAll]);
Edt_base_1.text := str;

  length( Edt_base_1.text);
  while length (Edt_base_1.text) <17 do
   Edt_base_1.text :='0' + Edt_base_1.text;
end;

procedure TFrm_dime.Edt_cod_TDDExit(Sender: TObject);
begin
length(Edt_cod_TDD.text);
  while length (Edt_cod_TDD.text) <4 do
   Edt_cod_TDD.text :='0' + Edt_cod_TDD.text;
end;

procedure TFrm_dime.Edt_concessaoExit(Sender: TObject);
begin
     length( Edt_concessao.text);
  while length (Edt_concessao.text) <15 do
   Edt_concessao.text :='0' + Edt_concessao.text;
end;

procedure TFrm_dime.Edt_cred_fundesExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_cred_fundes.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_cred_fundes.text,',','',[RfReplaceAll]);
  Edt_cred_fundes.text := str;

  length( Edt_cred_fundes.text);
  while length (Edt_cred_fundes.text) <17 do
  Edt_cred_fundes.text :='0' + Edt_cred_fundes.text;
end;

procedure TFrm_dime.Edt_cred_fundo_socialExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_cred_fundo_social.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_cred_fundo_social.text,',','',[RfReplaceAll]);
  Edt_cred_fundo_social.text := str;

 length(Edt_cred_fundo_social.text);
  while length (Edt_cred_fundo_social.text) <17 do
  Edt_cred_fundo_social.text :='0' + Edt_cred_fundo_social.text;
end;

procedure TFrm_dime.Edt_cred_futuro_fumdesExit(Sender: TObject);
var str:string;
begin
   StringReplace(Edt_cred_futuro_fumdes.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_cred_futuro_fumdes.text,',','',[RfReplaceAll]);
  Edt_cred_futuro_fumdes.text := str;
  length(Edt_cred_futuro_fumdes.text);
  while length (Edt_cred_futuro_fumdes.text) <17 do
  Edt_cred_futuro_fumdes.text :='0' + Edt_cred_futuro_fumdes.text;
end;

procedure TFrm_dime.EDT_devolucao_fumdesExit(Sender: TObject);
var str:string;
begin
 StringReplace(EDT_devolucao_fumdes.text, '.','',[rfReplaceAll]);
 str:= StringReplace(EDT_devolucao_fumdes.text,',','',[RfReplaceAll]);
 EDT_devolucao_fumdes.text := str;
 length(EDT_devolucao_fumdes.text);
  while length (EDT_devolucao_fumdes.text) <17 do
  EDT_devolucao_fumdes.text :='0' + EDT_devolucao_fumdes.text;
end;

procedure TFrm_dime.Edt_sald_cred_fundo_socialExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_sald_cred_fundo_social.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_sald_cred_fundo_social.text,',','',[RfReplaceAll]);
  Edt_sald_cred_fundo_social.text := str;
  length(Edt_sald_cred_fundo_social.text);
  while length (Edt_sald_cred_fundo_social.text) <17 do
  Edt_sald_cred_fundo_social.text :='0' + Edt_sald_cred_fundo_social.text;
end;

procedure TFrm_dime.Edt_subtipoExit(Sender: TObject);
begin
    length( Edt_subtipo.text);
  while length (Edt_subtipo.text) <4 do
  Edt_subtipo.text :='0' + Edt_subtipo.text;
end;

procedure TFrm_dime.Edt_tott1Exit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_tott1.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_tott1.text,',','',[RfReplaceAll]);
  Edt_tott1.text := str;
  length(Edt_tott1.text);
  while length (Edt_tott1.text) <17 do
  Edt_tott1.text :='0' + Edt_tott1.text;
end;

procedure TFrm_dime.Edt_tottExit(Sender: TObject);
var str:string;
begin
  StringReplace(Edt_tott.text, '.','',[rfReplaceAll]);
  str:= StringReplace(Edt_tott.text,',','',[RfReplaceAll]);
  Edt_tott.text := str;

  length(Edt_tott.text);
  while length (Edt_tott.text) <17 do
  Edt_tott.text :='0' + Edt_tott.text;
end;

procedure TFrm_dime.Edt_icms_exoneradoExit(Sender: TObject);
var str1:string;
begin
  StringReplace(Edt_icms_exonerado.text, '.','',[rfReplaceAll]);
  str1:= StringReplace(Edt_icms_exonerado.text,',','',[RfReplaceAll]);
  Edt_icms_exonerado.text := str1;
   length(Edt_icms_exonerado.text);
  while length (Edt_icms_exonerado.text) <17 do
  Edt_icms_exonerado.text :='0' + Edt_icms_exonerado.text;

end;

procedure TFrm_dime.SpeedButton10Click(Sender: TObject);
begin
 Showmessage ('Preencher com o valor do FUNDO SOCIAL resultante do c�lculo previsto para os c�digos de c�lculo informados na coluna 09 - C�digo C�lculo FUMDES.');
end;

procedure TFrm_dime.SpeedButton11Click(Sender: TObject);
begin
Application.MessageBox
('Preencher, separadamente, com o Valor da Base de C�lculo do ICMS constante da Nota Fiscal de devolu��o correspondente a cada benef�cio fiscal informado' +#13#10+
'na coluna 04 - Coluna C�digo do Benef�cio TTD Coluna C�digo do Benef�cio TTD, para o qual se exige este par�metro no c�lculo do FUNDO SOCIAL devido.', 'Aten��o', MB_ICONEXCLAMATION +Mb_ok);
end;

procedure TFrm_dime.SpeedButton12Click(Sender: TObject);
begin
Application.MessageBox
('Preencher, separadamente, com o valor do ICMS exonerado ou diferido' +#13#10+
'proporcional as devolu��es recebidas relativas a cada benef�cio fiscal do informado na coluna 04 - Coluna C�digo do Benef�cio TTD ou na coluna 06 - Subtipo DCIP �Tipo 3' +#13#10+
'- Cr�dito Presumido� sem exig�ncia de TTD, se for o caso.', 'Aten��o', MB_ICONEXCLAMATION +Mb_ok);
end;

procedure TFrm_dime.SpeedButton13Click(Sender: TObject);
begin
 Application.MessageBox
('Preencher, separadamente, com o valor do FUNDO SOCIAL proporcional � devolu��o relativa a cada benef�cio fiscal informado na coluna 04 - Coluna C�digo do Benef�cio TTD ou na coluna 06' +#13#10+
'Subtipo DCIP �Tipo 3 - Cr�dito Presumido� sem exig�ncia de TTD, se for o caso, correspondente ao montante calculado no per�odo da sa�da da mercadoria.' , 'Aten��o', MB_ICONEXCLAMATION +Mb_ok);

end;

procedure TFrm_dime.SpeedButton14Click(Sender: TObject);
begin
Application.MessageBox
('Preencher, separadamente, com o valor do FUMDES proporcional � devolu��o relativa a cada benef�cio fiscal informado na coluna 04 - Coluna C�digo do Benef�cio TTD ou na coluna 06' +#13#10+
'Subtipo DCIP �Tipo 3 - Cr�dito Presumido� sem exig�ncia de TTD, se for o caso, correspondente ao montante calculado no per�odo da sa�da da mercadoria' , 'Aten��o', MB_ICONEXCLAMATION +Mb_ok);
end;

procedure TFrm_dime.SpeedButton16Click(Sender: TObject);
begin
  Edit1.visible :=false;
  Edit4.visible :=false;
  Edit11.visible :=false;
  Edit16.visible :=false;
  Edit21.visible :=false;
  Edit26.visible :=false;
  Edit31.visible :=false;
  EdT_VL_FUNDES2.visible :=false;
  Edit41.visible :=false;
  Edit46.visible :=false;
  Edit51.visible :=false;
  Edit56.visible  :=false;
  Edit66.visible :=false;
  Edit61.visible :=false;
end;

procedure TFrm_dime.SpeedButton17Click(Sender: TObject);
begin
  Edit1.visible :=true;
  Edit4.visible :=true;
  Edit11.visible :=true;
  Edit16.visible :=true;
  Edit21.visible :=true;
  Edit26.visible :=true;
  Edit31.visible :=true;
  EdT_VL_FUNDES2.visible :=true;
  Edit41.visible :=true;
  Edit46.visible :=true;
  Edit51.visible :=true;
  Edit56.visible  :=true;
  Edit66.visible :=true;
  Edit61.visible :=true;
  end;


procedure TFrm_dime.SpeedButton18Click(Sender: TObject);
begin
  Edit2.visible := true;
  Edit5.visible := true ;
  Edit12.visible := true  ;
  Edit17.visible := true ;
  Edit22.visible := true  ;
  Edit27.visible := true   ;
  Edit32.visible := true    ;
  EdT_VL_FUNDES3.visible := true;
  Edit42.visible := true;
  Edit47.visible := true ;
  Edit52.visible := true;
  Edit57.visible := true ;
  Edit67.visible := true  ;
  Edit62.visible := true   ;
end;

procedure TFrm_dime.SpeedButton19Click(Sender: TObject);
begin
  Edit2.visible := false;
  Edit5.visible := false ;
  Edit12.visible := false  ;
  Edit17.visible := false ;
  Edit22.visible := false  ;
  Edit27.visible := false   ;
  Edit32.visible := false    ;
  EdT_VL_FUNDES3.visible := false;
  Edit42.visible := false;
  Edit47.visible := false ;
  Edit52.visible := false;
  Edit57.visible := false ;
  Edit67.visible := false  ;
  Edit62.visible := false   ;
end;

procedure TFrm_dime.SpeedButton1Click(Sender: TObject);
var
Arquivo: TextFile;
begin
      if not FileExists ('C:\Dime\Dime.txt') then
      begin
      AssignFile (Arquivo,  'C:\Dime\Dime.txt');
      Rewrite(Arquivo);
        WriteLn(Arquivo, Edt_fundo.text, '15','001', Edt_cod_TDD.text, Edt_concessao.Text,
         Edt_subtipo.text, Edt_base_1.text, Edt_icms_exonerado.text, Edit30.text,
         EdT_VL_FUNDES.text, Edit40.text, Edt_vl_fundo_social.text, Edt_base_devo.text,
         Edt_icms_exonerado_dev.text, Edt_fumdes.text, Edt_fundo_social.text );
         //WriteLn(Arquivo,'');
          if Edit1.visible = true then
           WriteLn(Arquivo, Edit1.text, '15','002', Edit4.text, Edit11.Text,
         Edit16.text, Edit21.text, Edit26.text, Edit31.text, EdT_VL_FUNDES2.text,
         Edit41.text, Edit46.text, Edit51.text, Edit56.text,
         Edit66.text, Edit61.text );
         if Edit2.visible = true then
           WriteLn(Arquivo, Edit2.text, '15','003', Edit5.text, Edit12.Text,
         Edit17.text, Edit22.text, Edit27.text, Edit32.text, EdT_VL_FUNDES3.text,
         Edit42.text, Edit47.text, Edit52.text, Edit57.text,
         Edit67.text, Edit62.text );

         WriteLn(Arquivo, '37', '16', '01', Edt_fundes_devido.text);
         WriteLn(Arquivo, '37', '16','02', Edt_recebe_cred.text);
         WriteLn(Arquivo, '37', '16', '03',EDT_devolucao_fumdes.text);
         WriteLn(Arquivo, '37', '16','98', Edt_cred_futuro_fumdes.text);
         WriteLn(Arquivo, '37', '16','99', Edt_recolhimento_fumdes.text);
         WriteLn(Arquivo, '37', '16','10', Edt_fundo_social_total.text);
         WriteLn(Arquivo, '37', '16','20', Edt_sald_cred_fundo_social.text);
         WriteLn(Arquivo, '37', '16','30', Edt_devolucao_fundo_social.text);
         WriteLn(Arquivo, '37', '16','98', Edt_tott.text);
         WriteLn(Arquivo, '37', '16','99', Edt_tott1.text);



         if CheckBox1.checked = true then
         WriteLn(Arquivo,'85','85','501', Edit23.text);
         if CheckBox1.checked = true then
         WriteLn(Arquivo,'85','85','511', Edit24.text);
         if CheckBox1.checked = true then
         WriteLn(Arquivo,'85','85','512', Edit25.text);
         if CheckBox1.checked = true then
         WriteLn(Arquivo,'85','85','519', Edit3.text);
         if CheckBox1.checked = true then
         WriteLn(Arquivo,'85','85','521', Edit28.text);
         if CheckBox1.checked = true then
         WriteLn(Arquivo,'85','85','522', Edit29.text);
         if CheckBox1.checked = true then
         WriteLn(Arquivo,'85','85','529', Edit6.text);



      CloseFIle(arquivo)  ;
      ShowMessage ('Arquivo Salvo Em C:\Dime');




      end

      else
      ShowMessage ('O Arquivo J� Existe');


end;


procedure TFrm_dime.SpeedButton20Click(Sender: TObject);
begin
ShellExecute (Handle, 'Open', 'https://sat.sef.sc.gov.br/tax.net/sat.ttd.web/consultapublicapedido.aspx', '',nil, sw_normal);
end;

procedure TFrm_dime.SpeedButton2Click(Sender: TObject);
begin
Application.MessageBox
 ('Coluna C�digo do Benef�cio TTD: Preencher com o c�digo de benef�cio TTD conforme consta no despacho concess�rio do TTD' +#13#10+
 'Valida��o na DIME: O c�digo do Benef�cio TTD informado deve constar da Portaria SEF n� 143/22.' +#13#10+
 'Preencher com zero quando na Coluna 06 - Subtipo DCIP �Tipo 3 - Cr�dito Presumido� sem exig�ncia de TTD foi informado um subtipo de DCIP validado relativo a um benef�cio fiscal relacionado no Anexo III da Portaria SEF 123/22.','Aten��o!', MB_ICONEXCLAMATION +Mb_ok);
 end;

procedure TFrm_dime.SpeedButton3Click(Sender: TObject);
begin
ShowMessage ('Coluna N�mero da Concess�o TTD: Preencher com o N�mero da Concess�o do TTD conforme consta no despacho concess�rio do TTD correspondente ao benef�cio fiscal informado na coluna 04 - Coluna C�digo do Benef�cio TTD.');

end;

procedure TFrm_dime.SpeedButton4Click(Sender: TObject);
begin
Showmessage ('Preencher com o n�mero do subtipo DCIP do �Tipo 3 - Cr�dito Presumido� sem exig�ncia de TTD, relacionado ao benef�cio fiscal discriminado no Anexo III da Portaria SEF n.� 143, de 2022.');
end;

procedure TFrm_dime.SpeedButton5Click(Sender: TObject);
begin
  ShowMessage
  ('Preencher com o valor da Base de C�lculo do ICMS da opera��o ou presta��o relativo ao c�digo do benef�cio TTD informado na coluna 4, sempre que na coluna 11 - C�digo do C�lculo FUNDO SOCIAL forem indicados os c�digos (2) e (3).');
end;

procedure TFrm_dime.SpeedButton6Click(Sender: TObject);
begin
 Application.MessageBox
 ('Preencher com montante mensal o valor da exonera��o ou do imposto diferido'+#13#10+
 'Conforme o caso, relativo ao c�digo do benef�cio TTD informado na coluna 04 - Coluna C�digo do Benef�cio TTD ou ao subtipo DCIP de Cr�dito Presumido informado na coluna 06 - Subtipo DCIP �Tipo 3 - Cr�dito Presumido� sem exig�ncia de TTD.' +#13#10+
 'Valida��o na DIME: Preencher com 0 (zero) sempre que na coluna 09 - C�digo C�lculo FUMDES e na coluna 11 - C�digo do C�lculo FUNDO SOCIAL estiver preenchido com o c�digo = (0).','Aten��o!', MB_ICONEXCLAMATION +Mb_ok);
end;

procedure TFrm_dime.SpeedButton7Click(Sender: TObject);
begin
Application.MessageBox
  ('0 - Sem exigibilidade do FUMDES;' +#13#10+
  '1 - Com exigibilidade do FUMDES','Aten��o!', MB_ICONEXCLAMATION +Mb_ok);
end;

procedure TFrm_dime.SpeedButton8Click(Sender: TObject);
begin
 ShowMessage ('Preencher com o valor do FUNDES, quando na coluna 9 foi indicado o c�digo (1), resultante da aplica��o do percentual de 2% sobre o valor ICMS exonerado informado na coluna 8 - Valor do ICMS Exonerado Relativo a cada N �mero de Concess�o.');
end;

procedure TFrm_dime.SpeedButton9Click(Sender: TObject);
begin


Application.MessageBox
('0 � Sem exigibilidade do FUNDO SOCIAL;' +#13#10+
'1 � 2,5% do Valor da Exonera��o;' +#13#10+
'2 � Diferen�a de 0,4% da Base de C�lculo ICMS deduzido do valor do FUMDES apurado;' +#13#10+
'3 � Diferen�a, se houver, de 0,4% da Base de C�lculo ICMS para os valores do FUMDES e FUNDO SOCIAL devidos;' +#13#10+
'4 � 4,5% do Valor da Exonera��o.', 'Aten��o', MB_ICONEXCLAMATION +Mb_ok);


end;

end.
