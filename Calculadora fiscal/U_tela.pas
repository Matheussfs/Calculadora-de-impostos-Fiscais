unit U_tela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btn_pis: TSpeedButton;
    btn_cofins: TSpeedButton;
    btn_icms: TSpeedButton;
    Btn_icms_st: TSpeedButton;
    Btn_difal: TSpeedButton;
    Btn_ipi: TSpeedButton;
    Btn_retencoes: TSpeedButton;
    Btn_csll: TSpeedButton;
    btn_irpj: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    StatusBar1: TStatusBar;
    Pnl_topo: TPanel;
    Timer1: TTimer;
    procedure btn_pisClick(Sender: TObject);
    procedure btn_cofinsClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btn_icmsClick(Sender: TObject);
    procedure Btn_icms_stClick(Sender: TObject);
    procedure Btn_ipiClick(Sender: TObject);
    procedure Btn_difalClick(Sender: TObject);
    procedure btn_irpjClick(Sender: TObject);
    procedure Btn_csllClick(Sender: TObject);
    procedure Btn_retencoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses U_cofins, U_pis, U_icms, U_csll, U_difal, U_icms_st, U_ipi, U_irpj,
  U_retencoes;

procedure TForm1.btn_cofinsClick(Sender: TObject);
begin
frm_cofins := tfrm_cofins.create (self);
frm_cofins.showmodal;
end;

procedure TForm1.Btn_csllClick(Sender: TObject);
begin
frm_csll := tfrm_csll.create(self);
frm_csll.showmodal;
end;

procedure TForm1.Btn_difalClick(Sender: TObject);
begin
frm_difal := tfrm_difal.create(self);
frm_difal.showmodal;
end;

procedure TForm1.btn_icmsClick(Sender: TObject);
begin
  frm_icms := tfrm_icms.create(self);
  frm_icms.showmodal;
end;

procedure TForm1.Btn_icms_stClick(Sender: TObject);
begin
frm_icms_st := tfrm_icms_st.create(self);
frm_icms_st.showmodal;
end;

procedure TForm1.Btn_ipiClick(Sender: TObject);
begin
frm_ipi := tfrm_ipi.create(self);
frm_ipi.showmodal;
end;

procedure TForm1.btn_irpjClick(Sender: TObject);
begin
frm_irpj := tfrm_irpj.create(self);
frm_irpj.showmodal;
end;

procedure TForm1.btn_pisClick(Sender: TObject);
begin
frm_pis := tfrm_pis.create(self);
frm_pis.showmodal;
end;

procedure TForm1.Btn_retencoesClick(Sender: TObject);
begin
frm_retencoes := tfrm_retencoes.create(self);
frm_retencoes.showmodal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.panels[0].text := 'Data: ' + FormatDateTime('dd/mm/yyyy', now);
StatusBar1.panels[1].text := 'Hora: ' + FormatDateTime('hh:mm:ss', now);
end;

end.
