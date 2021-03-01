unit ufrmRelAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelAbastecimento = class(TForm)
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    QryRel: TFDQuery;
    DSRel: TDataSource;
    QryRelCODIGO: TIntegerField;
    QryRelCODIGO_BOMBA: TIntegerField;
    QryRelNUMERO_BOMBA: TIntegerField;
    QryRelDESCRICAO_COMBUSTIVEL: TStringField;
    QryRelNUMERO_TANQUE: TIntegerField;
    QryRelLITROS: TBCDField;
    QryRelVALORABASTECIMENTO: TBCDField;
    QryRelVALORIMPOSTO: TBCDField;
    QryRelDATA: TDateField;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand6: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAbastecimento: TfrmRelAbastecimento;

implementation

{$R *.dfm}

uses uDM;

end.
