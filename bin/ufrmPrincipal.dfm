object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CombusClau'
  ClientHeight = 241
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 496
    Height = 78
    Align = alTop
    TabOrder = 0
    object BtnSalvar: TBitBtn
      Left = 16
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = BtnSalvarClick
    end
    object BitBtn1: TBitBtn
      Left = 97
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object GroupBox2: TGroupBox
      Left = 216
      Top = 6
      Width = 273
      Height = 65
      Caption = 'Impress'#227'o'
      TabOrder = 2
      object Label5: TLabel
        Left = 9
        Top = 17
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
        FocusControl = DBEValorAbastecimento
      end
      object Label6: TLabel
        Left = 96
        Top = 17
        Width = 48
        Height = 13
        Caption = 'Data Final'
        FocusControl = DBEValorAbastecimento
      end
      object BtnImprimir: TBitBtn
        Left = 187
        Top = 29
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 0
        OnClick = BtnImprimirClick
      end
      object DTPInicial: TDateTimePicker
        Left = 9
        Top = 31
        Width = 81
        Height = 21
        Date = 44253.996862094910000000
        Time = 44253.996862094910000000
        TabOrder = 1
      end
      object DTPFinal: TDateTimePicker
        Left = 96
        Top = 31
        Width = 81
        Height = 21
        Date = 44253.996862094910000000
        Time = 44253.996862094910000000
        TabOrder = 2
      end
    end
  end
  object GBInfoAbastecimento: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 87
    Width = 496
    Height = 151
    Align = alTop
    Caption = 'Informa'#231#245'es do Abastecimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 66
    object Label1: TLabel
      Left = 16
      Top = 87
      Width = 136
      Height = 16
      Caption = 'Valor do Abastecimento'
      FocusControl = DBEValorAbastecimento
    end
    object Label2: TLabel
      Left = 172
      Top = 87
      Width = 46
      Height = 16
      Caption = 'Imposto'
      FocusControl = DBEValorImposto
    end
    object Label3: TLabel
      Left = 328
      Top = 87
      Width = 59
      Height = 16
      Caption = 'Qtd. Litros'
      FocusControl = DBEQtdLitros
    end
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 130
      Height = 16
      Caption = 'Bomba de Combust'#237'vel'
      FocusControl = DBEValorAbastecimento
    end
    object DBEValorAbastecimento: TDBEdit
      Left = 16
      Top = 104
      Width = 150
      Height = 24
      DataField = 'VALORABASTECIMENTO'
      DataSource = DM.DSAbastecimento
      TabOrder = 1
      OnChange = DBEValorAbastecimentoChange
    end
    object DBEValorImposto: TDBEdit
      Left = 172
      Top = 104
      Width = 150
      Height = 24
      DataField = 'VALORIMPOSTO'
      DataSource = DM.DSAbastecimento
      Enabled = False
      TabOrder = 2
    end
    object DBEQtdLitros: TDBEdit
      Left = 328
      Top = 104
      Width = 150
      Height = 24
      DataField = 'LITROS'
      DataSource = DM.DSAbastecimento
      Enabled = False
      TabOrder = 3
    end
    object DBLKCBBombaCombustivel: TDBLookupComboBox
      Left = 16
      Top = 48
      Width = 306
      Height = 24
      DataField = 'CODIGO_BOMBA'
      DataSource = DM.DSAbastecimento
      KeyField = 'NUMERO'
      ListField = 'NUMERO;DESCRICAO_COMBUSTIVEL'
      ListSource = DM.DSBomba
      TabOrder = 0
      OnCloseUp = DBLKCBBombaCombustivelCloseUp
    end
  end
end
