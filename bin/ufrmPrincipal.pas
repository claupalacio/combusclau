unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, DateUtils, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    BtnSalvar: TBitBtn;
    GBInfoAbastecimento: TGroupBox;
    Label1: TLabel;
    DBEValorAbastecimento: TDBEdit;
    Label2: TLabel;
    DBEValorImposto: TDBEdit;
    Label3: TLabel;
    DBEQtdLitros: TDBEdit;
    DBLKCBBombaCombustivel: TDBLookupComboBox;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    BtnImprimir: TBitBtn;
    DTPInicial: TDateTimePicker;
    DTPFinal: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DBEValorAbastecimentoChange(Sender: TObject);
    procedure DBLKCBBombaCombustivelCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure CalculaLitros;
    procedure CalculaImposto;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDM, ufrmRelAbastecimento;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  //Cancela anterações
  DM.QryAbastecimento.Cancel;
  DM.CancelarRegistro;

  //Inicia novamente
  DM.QryAbastecimento.Append;
end;

procedure TfrmPrincipal.BtnImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelAbastecimento, frmRelAbastecimento);

  frmRelAbastecimento.QryRel.Close;
  frmRelAbastecimento.QryRel.Params.ClearValues;
  frmRelAbastecimento.QryRel.Params.Items[0].Value := DTPInicial.DateTime;
  frmRelAbastecimento.QryRel.Params.Items[1].Value := DTPFinal.DateTime;
  frmRelAbastecimento.QryRel.Open;

  if frmRelAbastecimento.QryRel.RecordCount > 0 then
    frmRelAbastecimento.RLReport1.Preview
  else Application.MessageBox('Nenhum abastecimento encontrado nesten período!','Informação',MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPrincipal.BtnSalvarClick(Sender: TObject);
begin
  try
    try
      Dm.QryAbastecimentoDATA.AsDateTime := DateOf(Now);
      DM.QryAbastecimento.Post;
      DM.ConfirmarRegistro;
    Except
      Application.MessageBox('Erro ao tentar salvar o abastecimento. Verifique as informações e tente novamente!','Alerta',MB_ICONWARNING + MB_OK);
    end;
  finally
    Application.MessageBox('Abastecimento salvo com sucesso!','Informação',MB_ICONINFORMATION + MB_OK);
    DM.QryAbastecimento.Append;
  end;
end;

procedure TfrmPrincipal.CalculaImposto;
begin
  Dm.QryAbastecimentoVALORIMPOSTO.Value := Dm.QryAbastecimentoVALORABASTECIMENTO.Value * 0.13;
end;

procedure TfrmPrincipal.CalculaLitros;
begin
  if Dm.QryAbastecimentoVALORABASTECIMENTO.Value > 0 then
  begin
    //Calcula a quantidade de Litros
    Dm.QryAbastecimentoLITROS.Value := Dm.QryAbastecimentoVALORABASTECIMENTO.Value / Dm.QryBombaVALORLITRO.Value;
    
  end;
end;

procedure TfrmPrincipal.DBEValorAbastecimentoChange(Sender: TObject);
begin
  CalculaLitros;
  CalculaImposto;
end;

procedure TfrmPrincipal.DBLKCBBombaCombustivelCloseUp(Sender: TObject);
begin
  CalculaLitros;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Dm.QryAbastecimento.Open;
  Dm.QryBomba.Open;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  DM.QryAbastecimento.Append;
end;

end.
