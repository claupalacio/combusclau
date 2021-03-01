unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Error, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Data.DB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConn: TFDConnection;
    LoginDialog: TFDGUIxLoginDialog;
    ErrorDialog: TFDGUIxErrorDialog;
    WaitCursor: TFDGUIxWaitCursor;
    FDTrans: TFDTransaction;
    QryAbastecimento: TFDQuery;
    QryAbastecimentoCODIGO: TIntegerField;
    QryAbastecimentoCODIGO_BOMBA: TIntegerField;
    QryAbastecimentoLITROS: TBCDField;
    QryAbastecimentoVALORABASTECIMENTO: TBCDField;
    QryAbastecimentoVALORIMPOSTO: TBCDField;
    QryAbastecimentoDATA: TDateField;
    DSAbastecimento: TDataSource;
    QryBomba: TFDQuery;
    DSBomba: TDataSource;
    QryCombustivel: TFDQuery;
    DSCombustivel: TDataSource;
    QryTanque: TFDQuery;
    DSTanque: TDataSource;
    QryBombaCODIGO: TIntegerField;
    QryBombaCODIGO_TANQUE: TIntegerField;
    QryBombaNUMERO: TIntegerField;
    QryCombustivelCODIGO: TIntegerField;
    QryCombustivelDESCRICAO: TStringField;
    QryCombustivelVALORLITRO: TBCDField;
    QryTanqueCODIGO: TIntegerField;
    QryTanqueCODIGO_COMBUSTIVEL: TIntegerField;
    QryTanqueVOLUMETOTAL: TBCDField;
    QryTanqueVOLUMEATUAL: TBCDField;
    QryTanqueNUMERO: TIntegerField;
    QryBombaNUMERO_TANQUE: TIntegerField;
    QryBombaDESCRICAO_COMBUSTIVEL: TStringField;
    QryBombaVALORLITRO: TBCDField;
    procedure DSAbastecimentoStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure ConfirmarRegistro;
    procedure CancelarRegistro;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ufrmPrincipal;

{$R *.dfm}

procedure TDM.CancelarRegistro;
begin
  if FDTrans.Connection.InTransaction then
    FDTrans.RollbackRetaining;
end;

procedure TDM.ConfirmarRegistro;
begin
  if FDTrans.Connection.InTransaction then
    FDTrans.CommitRetaining;
end;

procedure TDM.DSAbastecimentoStateChange(Sender: TObject);
begin
  if DSAbastecimento.State in [dsEdit, dsInsert] then
  begin
    frmPrincipal.BtnSalvar.Enabled           := True;

    frmPrincipal.GBInfoAbastecimento.Enabled := True;

    frmPrincipal.DBLKCBBombaCombustivel.SetFocus;

    //Informa Valores Padr�es para in�cio de registro
    QryAbastecimentoLITROS.Value             := 0;
    QryAbastecimentoVALORABASTECIMENTO.Value := 0;
    QryAbastecimentoVALORIMPOSTO.Value       := 0;
  end
  else
  begin
    frmPrincipal.BtnSalvar.Enabled           := False;

    frmPrincipal.GBInfoAbastecimento.Enabled := False;
  end;
end;

end.
