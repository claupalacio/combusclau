object DM: TDM
  OldCreateOrder = False
  Height = 253
  Width = 597
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\CombusClau\db\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginDialog = LoginDialog
    LoginPrompt = False
    Transaction = FDTrans
    UpdateTransaction = FDTrans
    Left = 40
    Top = 16
  end
  object LoginDialog: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 40
    Top = 96
  end
  object ErrorDialog: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 40
    Top = 144
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 192
  end
  object FDTrans: TFDTransaction
    Connection = FDConn
    Left = 96
    Top = 16
  end
  object QryAbastecimento: TFDQuery
    Connection = FDConn
    Transaction = FDTrans
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvRefreshMode, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.GeneratorName = 'GEN_TBLABASTECIMENTO_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBLABASTECIMENTO'
    UpdateOptions.KeyFields = 'CODIGO'
    SQL.Strings = (
      'Select * from TBLABASTECIMENTO')
    Left = 256
    Top = 48
    object QryAbastecimentoCODIGO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAbastecimentoCODIGO_BOMBA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO_BOMBA'
      Origin = 'CODIGO_BOMBA'
      Required = True
    end
    object QryAbastecimentoLITROS: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Qtd. Litros'
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      DisplayFormat = '###,###,##0,00'
      EditFormat = '###,###,##0,00'
      Precision = 18
      Size = 2
    end
    object QryAbastecimentoVALORABASTECIMENTO: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor do Abastecimento'
      FieldName = 'VALORABASTECIMENTO'
      Origin = 'VALORABASTECIMENTO'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QryAbastecimentoVALORIMPOSTO: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor do Imposto'
      FieldName = 'VALORIMPOSTO'
      Origin = 'VALORIMPOSTO'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QryAbastecimentoDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object DSAbastecimento: TDataSource
    DataSet = QryAbastecimento
    OnStateChange = DSAbastecimentoStateChange
    Left = 256
    Top = 96
  end
  object QryBomba: TFDQuery
    Connection = FDConn
    Transaction = FDTrans
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvRefreshMode, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.GeneratorName = 'GEN_TBLABASTECIMENTO_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBLABASTECIMENTO'
    UpdateOptions.KeyFields = 'CODIGO'
    SQL.Strings = (
      'Select B.* '
      '      ,T.NUMERO as NUMERO_TANQUE'
      '      ,C.DESCRICAO as DESCRICAO_COMBUSTIVEL'
      '      ,C.VALORLITRO'
      'from TBLBOMBA B'
      'inner join TBLTANQUE T on T.CODIGO = B.CODIGO_TANQUE'
      'inner join TBLCOMBUSTIVEL C on C.CODIGO = T.CODIGO_COMBUSTIVEL'
      '')
    Left = 352
    Top = 48
    object QryBombaCODIGO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBombaCODIGO_TANQUE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO_TANQUE'
      Origin = 'CODIGO_TANQUE'
      Required = True
    end
    object QryBombaNUMERO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#186' da Bomba'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QryBombaNUMERO_TANQUE: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_TANQUE'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object QryBombaDESCRICAO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_COMBUSTIVEL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object QryBombaVALORLITRO: TBCDField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'VALORLITRO'
      Origin = 'VALORLITRO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object DSBomba: TDataSource
    DataSet = QryBomba
    Left = 352
    Top = 96
  end
  object QryCombustivel: TFDQuery
    Connection = FDConn
    Transaction = FDTrans
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvRefreshMode, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.GeneratorName = 'GEN_TBLABASTECIMENTO_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBLABASTECIMENTO'
    UpdateOptions.KeyFields = 'CODIGO'
    SQL.Strings = (
      'Select * from TBLCOMBUSTIVEL')
    Left = 440
    Top = 48
    object QryCombustivelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCombustivelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QryCombustivelVALORLITRO: TBCDField
      FieldName = 'VALORLITRO'
      Origin = 'VALORLITRO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object DSCombustivel: TDataSource
    DataSet = QryCombustivel
    Left = 440
    Top = 96
  end
  object QryTanque: TFDQuery
    Connection = FDConn
    Transaction = FDTrans
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvRefreshMode, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.GeneratorName = 'GEN_TBLABASTECIMENTO_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBLABASTECIMENTO'
    UpdateOptions.KeyFields = 'CODIGO'
    SQL.Strings = (
      'Select * from TBLTANQUE')
    Left = 528
    Top = 48
    object QryTanqueCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTanqueCODIGO_COMBUSTIVEL: TIntegerField
      DisplayLabel = 'C'#243'd. Combust'#237'vel'
      FieldName = 'CODIGO_COMBUSTIVEL'
      Origin = 'CODIGO_COMBUSTIVEL'
      Required = True
    end
    object QryTanqueVOLUMETOTAL: TBCDField
      DisplayLabel = 'Volume Total'
      FieldName = 'VOLUMETOTAL'
      Origin = 'VOLUMETOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryTanqueVOLUMEATUAL: TBCDField
      DisplayLabel = 'Volume Atual'
      FieldName = 'VOLUMEATUAL'
      Origin = 'VOLUMEATUAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryTanqueNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
  end
  object DSTanque: TDataSource
    DataSet = QryTanque
    Left = 528
    Top = 96
  end
end
