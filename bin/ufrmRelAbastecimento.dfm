object frmRelAbastecimento: TfrmRelAbastecimento
  Left = 0
  Top = 0
  Caption = 'frmRelAbastecimento'
  ClientHeight = 792
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 0
        Top = 1
        Width = 287
        Height = 19
        Caption = 'Relat'#243'rio de Abastecimento Di'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 490
        Top = 18
        Width = 60
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 490
        Top = 1
        Width = 72
        Height = 16
        Caption = 'Impress'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 577
      Width = 718
      Height = 20
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 628
        Top = 3
        Width = 88
        Height = 16
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 575
        Top = 3
        Width = 47
        Height = 16
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 81
      Width = 718
      Height = 496
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataFields = 'DATA'
      object RLBand5: TRLBand
        Left = 0
        Top = 70
        Width = 718
        Height = 64
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Style = bsBDiagonal
        object RLLabel12: TRLLabel
          Left = 372
          Top = 10
          Width = 163
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total de Abastecimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 372
          Top = 27
          Width = 163
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total de Impostos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 372
          Top = 44
          Width = 163
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total de Litros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 536
          Top = 10
          Width = 182
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALORABASTECIMENTO'
          DataSource = DSRel
          DisplayMask = '###,###,##0.00'
          Info = riSum
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 536
          Top = 27
          Width = 182
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALORIMPOSTO'
          DataSource = DSRel
          DisplayMask = '###,###,##0.00'
          Info = riSum
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 536
          Top = 44
          Width = 182
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'LITROS'
          DataSource = DSRel
          DisplayMask = '###,###,##0.00'
          Info = riSum
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 24
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText2: TRLDBText
          Left = 0
          Top = 4
          Width = 47
          Height = 16
          AutoSize = False
          DataField = 'CODIGO'
          DataSource = DSRel
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 53
          Top = 4
          Width = 51
          Height = 16
          AutoSize = False
          DataField = 'NUMERO_TANQUE'
          DataSource = DSRel
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 110
          Top = 4
          Width = 47
          Height = 16
          AutoSize = False
          DataField = 'NUMERO_BOMBA'
          DataSource = DSRel
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 163
          Top = 4
          Width = 155
          Height = 16
          AutoSize = False
          DataField = 'DESCRICAO_COMBUSTIVEL'
          DataSource = DSRel
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 324
          Top = 4
          Width = 160
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALORABASTECIMENTO'
          DataSource = DSRel
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 490
          Top = 4
          Width = 160
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALORIMPOSTO'
          DataSource = DSRel
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 656
          Top = 4
          Width = 62
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'LITROS'
          DataSource = DSRel
          Text = ''
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 46
        BandType = btTitle
        object RLLabel4: TRLLabel
          Left = 0
          Top = 25
          Width = 47
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 110
          Top = 25
          Width = 47
          Height = 16
          Caption = 'Bomba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 163
          Top = 25
          Width = 155
          Height = 16
          Caption = 'Combust'#237'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 53
          Top = 25
          Width = 51
          Height = 16
          Caption = 'Tanque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 656
          Top = 25
          Width = 62
          Height = 16
          Alignment = taCenter
          Caption = 'Litros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 324
          Top = 25
          Width = 160
          Height = 16
          Alignment = taCenter
          Caption = 'Valor de Abastecimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 490
          Top = 25
          Width = 160
          Height = 16
          Alignment = taCenter
          Caption = 'Valor de Impostos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 0
          Top = 3
          Width = 162
          Height = 16
          Caption = 'Data de Abastecimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 163
          Top = 3
          Width = 68
          Height = 16
          DataField = 'DATA'
          DataSource = DSRel
          Text = ''
        end
      end
    end
  end
  object QryRel: TFDQuery
    Active = True
    Connection = DM.FDConn
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
      ' SELECT A.CODIGO'
      '       ,A.CODIGO_BOMBA'
      '       ,B.NUMERO       AS NUMERO_BOMBA'
      '       ,C.DESCRICAO    AS DESCRICAO_COMBUSTIVEL'
      '       ,T.NUMERO       AS NUMERO_TANQUE'
      '       ,A.LITROS'
      '       ,A.VALORABASTECIMENTO'
      '       ,A.VALORIMPOSTO'
      '       ,A.DATA'
      ' FROM TBLABASTECIMENTO A'
      ' INNER JOIN TBLBOMBA B ON B.CODIGO = A.CODIGO_BOMBA'
      ' INNER JOIN TBLTANQUE T ON T.CODIGO = B.CODIGO_TANQUE'
      ' INNER JOIN TBLCOMBUSTIVEL C ON C.CODIGO = T.CODIGO_COMBUSTIVEL'
      ' WHERE A.DATA BETWEEN :DATAINICIAL AND :DATAFINAL'
      ' ORDER BY A.DATA, A.CODIGO')
    Left = 824
    Top = 48
    ParamData = <
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
        Value = 44253d
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
        Value = 44254d
      end>
    object QryRelCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryRelCODIGO_BOMBA: TIntegerField
      DisplayLabel = 'C'#243'd. Bomba'
      FieldName = 'CODIGO_BOMBA'
      Origin = 'CODIGO_BOMBA'
      Required = True
    end
    object QryRelNUMERO_BOMBA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bomba'
      FieldName = 'NUMERO_BOMBA'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object QryRelDESCRICAO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Combust'#237'vel'
      FieldName = 'DESCRICAO_COMBUSTIVEL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object QryRelNUMERO_TANQUE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tanque'
      FieldName = 'NUMERO_TANQUE'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object QryRelLITROS: TBCDField
      DisplayLabel = 'Litros'
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QryRelVALORABASTECIMENTO: TBCDField
      DisplayLabel = 'Valor de Abastecimento'
      FieldName = 'VALORABASTECIMENTO'
      Origin = 'VALORABASTECIMENTO'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QryRelVALORIMPOSTO: TBCDField
      DisplayLabel = 'Valor de Impostos'
      FieldName = 'VALORIMPOSTO'
      Origin = 'VALORIMPOSTO'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QryRelDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object DSRel: TDataSource
    DataSet = QryRel
    Left = 824
    Top = 96
  end
end
