object frm_data_module: Tfrm_data_module
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 400
  Width = 504
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema-gerencia-clientes'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\JAMESMARCELO\Documents\GitHub\Sistema-de-Gerenciamento-' +
      'de-Clientes-com-Delphi-e-MySQL\lib\libmySQL.dll'
    Left = 136
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 8
  end
  object tbl_clients: TFDTable
    IndexFieldNames = 'cliente_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '`sistema-gerencia-clientes`.clientes'
    TableName = '`sistema-gerencia-clientes`.clientes'
    Left = 336
    Top = 8
    object tbl_clientscliente_id: TFDAutoIncField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbl_clientscliente_nome: TStringField
      FieldName = 'cliente_nome'
      Origin = 'cliente_nome'
      Required = True
      Size = 75
    end
    object tbl_clientscliente_rg: TStringField
      FieldName = 'cliente_rg'
      Origin = 'cliente_rg'
      Required = True
      EditMask = '0000000000;0;_'
      Size = 15
    end
    object tbl_clientscliente_cpf: TStringField
      FieldName = 'cliente_cpf'
      Origin = 'cliente_cpf'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 15
    end
    object tbl_clientscliente_data_nasc: TDateField
      FieldName = 'cliente_data_nasc'
      Origin = 'cliente_data_nasc'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object tbl_clientscliente_data_cad: TDateField
      FieldName = 'cliente_data_cad'
      Origin = 'cliente_data_cad'
      Required = True
    end
    object tbl_clientscliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Origin = 'cliente_endereco'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_num_residencia: TStringField
      FieldName = 'cliente_num_residencia'
      Origin = 'cliente_num_residencia'
      Required = True
      Size = 10
    end
    object tbl_clientscliente_cep: TStringField
      FieldName = 'cliente_cep'
      Origin = 'cliente_cep'
      Required = True
      EditMask = '00000\-999;0;_'
    end
    object tbl_clientscliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Origin = 'cliente_bairro'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Origin = 'cliente_cidade'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_estado: TStringField
      FieldName = 'cliente_estado'
      Origin = 'cliente_estado'
      Required = True
      Size = 30
    end
    object tbl_clientscliente_telefone: TStringField
      FieldName = 'cliente_telefone'
      Origin = 'cliente_telefone'
      Required = True
      EditMask = '!\(99\) 0000\-0000;0;_'
      Size = 15
    end
    object tbl_clientscliente_celular: TStringField
      FieldName = 'cliente_celular'
      Origin = 'cliente_celular'
      Required = True
      EditMask = '!\(99\) 00000\-0000;0;_'
      Size = 15
    end
    object tbl_clientscliente_email: TStringField
      FieldName = 'cliente_email'
      Origin = 'cliente_email'
      Required = True
      Size = 100
    end
    object tbl_clientscliente_situacao: TStringField
      FieldName = 'cliente_situacao'
      Origin = 'cliente_situacao'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = tbl_clients
    Left = 400
    Top = 8
  end
  object sql_query_clients: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 136
    Top = 112
    object sql_query_clientscliente_id: TFDAutoIncField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_query_clientscliente_nome: TStringField
      FieldName = 'cliente_nome'
      Origin = 'cliente_nome'
      Required = True
      Size = 75
    end
    object sql_query_clientscliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Origin = 'cliente_endereco'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_num_residencia: TStringField
      FieldName = 'cliente_num_residencia'
      Origin = 'cliente_num_residencia'
      Required = True
      Size = 10
    end
    object sql_query_clientscliente_cep: TStringField
      FieldName = 'cliente_cep'
      Origin = 'cliente_cep'
      Required = True
    end
    object sql_query_clientscliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Origin = 'cliente_bairro'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Origin = 'cliente_cidade'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_estado: TStringField
      FieldName = 'cliente_estado'
      Origin = 'cliente_estado'
      Required = True
      Size = 30
    end
    object sql_query_clientscliente_rg: TStringField
      FieldName = 'cliente_rg'
      Origin = 'cliente_rg'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_cpf: TStringField
      FieldName = 'cliente_cpf'
      Origin = 'cliente_cpf'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_telefone: TStringField
      FieldName = 'cliente_telefone'
      Origin = 'cliente_telefone'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_celular: TStringField
      FieldName = 'cliente_celular'
      Origin = 'cliente_celular'
      Required = True
      Size = 15
    end
    object sql_query_clientscliente_email: TStringField
      FieldName = 'cliente_email'
      Origin = 'cliente_email'
      Required = True
      Size = 100
    end
    object sql_query_clientscliente_data_nasc: TDateField
      FieldName = 'cliente_data_nasc'
      Origin = 'cliente_data_nasc'
      Required = True
    end
    object sql_query_clientscliente_data_cad: TDateField
      FieldName = 'cliente_data_cad'
      Origin = 'cliente_data_cad'
      Required = True
    end
    object sql_query_clientscliente_situacao: TStringField
      FieldName = 'cliente_situacao'
      Origin = 'cliente_situacao'
      Required = True
    end
  end
  object data_source_query_clients: TDataSource
    DataSet = sql_query_clients
    Left = 256
    Top = 112
  end
  object sql_print_clients: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 136
    Top = 192
    object sql_print_clientscliente_id: TFDAutoIncField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_print_clientscliente_nome: TStringField
      FieldName = 'cliente_nome'
      Origin = 'cliente_nome'
      Required = True
      Size = 75
    end
    object sql_print_clientscliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Origin = 'cliente_endereco'
      Required = True
      Size = 100
    end
    object sql_print_clientscliente_num_residencia: TStringField
      FieldName = 'cliente_num_residencia'
      Origin = 'cliente_num_residencia'
      Required = True
      Size = 10
    end
    object sql_print_clientscliente_cep: TStringField
      FieldName = 'cliente_cep'
      Origin = 'cliente_cep'
      Required = True
    end
    object sql_print_clientscliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Origin = 'cliente_bairro'
      Required = True
      Size = 100
    end
    object sql_print_clientscliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Origin = 'cliente_cidade'
      Required = True
      Size = 100
    end
    object sql_print_clientscliente_estado: TStringField
      FieldName = 'cliente_estado'
      Origin = 'cliente_estado'
      Required = True
      Size = 30
    end
    object sql_print_clientscliente_rg: TStringField
      FieldName = 'cliente_rg'
      Origin = 'cliente_rg'
      Required = True
      Size = 15
    end
    object sql_print_clientscliente_cpf: TStringField
      FieldName = 'cliente_cpf'
      Origin = 'cliente_cpf'
      Required = True
      Size = 15
    end
    object sql_print_clientscliente_telefone: TStringField
      FieldName = 'cliente_telefone'
      Origin = 'cliente_telefone'
      Required = True
      Size = 15
    end
    object sql_print_clientscliente_celular: TStringField
      FieldName = 'cliente_celular'
      Origin = 'cliente_celular'
      Required = True
      Size = 15
    end
    object sql_print_clientscliente_email: TStringField
      FieldName = 'cliente_email'
      Origin = 'cliente_email'
      Required = True
      Size = 100
    end
    object sql_print_clientscliente_data_nasc: TDateField
      FieldName = 'cliente_data_nasc'
      Origin = 'cliente_data_nasc'
      Required = True
    end
    object sql_print_clientscliente_data_cad: TDateField
      FieldName = 'cliente_data_cad'
      Origin = 'cliente_data_cad'
      Required = True
    end
    object sql_print_clientscliente_situacao: TStringField
      FieldName = 'cliente_situacao'
      Origin = 'cliente_situacao'
      Required = True
    end
  end
  object report_client: TfrxReport
    Version = '5.6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43311.707672256900000000
    ReportOptions.LastChange = 43321.557124664350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 136
    Top = 272
    Datasets = <
      item
        DataSet = data_set_report_client
        DataSetName = 'data_set_report_client'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 94.102350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Top = 56.692950000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema de Cadastro de Clientes')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 13421772
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'jamesschulzm.github.io')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 262.228510000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = data_set_report_client
        DataSetName = 'data_set_report_client'
        RowCount = 0
        object data_set_report_clientcliente_id: TfrxMemoView
          Left = 170.078850000000000000
          Top = 109.606370000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_data_nasc'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_data_nasc"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object data_set_report_clientcliente_nome: TfrxMemoView
          Left = 170.078850000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_nome'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_nome"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_rg: TfrxMemoView
          Left = 170.078850000000000000
          Top = 71.811070000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_rg'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_rg"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_cpf: TfrxMemoView
          Left = 170.078850000000000000
          Top = 90.708720000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cpf"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 56.692950000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 56.692950000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object data_set_report_clientcliente_celular: TfrxMemoView
          Left = 170.078850000000000000
          Top = 128.504020000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_celular'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_celular"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_telefone: TfrxMemoView
          Left = 170.078850000000000000
          Top = 147.401670000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_telefone'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_telefone"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_email: TfrxMemoView
          Left = 170.078850000000000000
          Top = 166.299320000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_email'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_email"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_endereco: TfrxMemoView
          Left = 491.338900000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_endereco'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_endereco"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_num_residencia: TfrxMemoView
          Left = 491.338900000000000000
          Top = 71.811070000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_num_residencia'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_num_residencia"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_cep: TfrxMemoView
          Left = 491.338900000000000000
          Top = 90.708720000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_cep'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cep"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_bairro: TfrxMemoView
          Left = 491.338900000000000000
          Top = 109.606370000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_bairro'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_bairro"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_cidade: TfrxMemoView
          Left = 491.338900000000000000
          Top = 128.504020000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_cidade'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_cidade"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_estado: TfrxMemoView
          Left = 491.338900000000000000
          Top = 147.401670000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_estado'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_estado"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_data_cad: TfrxMemoView
          Left = 170.078850000000000000
          Top = 215.433210000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_data_cad'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_data_cad"]')
          ParentFont = False
        end
        object data_set_report_clientcliente_situacao: TfrxMemoView
          Left = 491.338900000000000000
          Top = 215.433210000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_situacao'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_situacao"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 56.692950000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 56.692950000000000000
          Top = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CELULAR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 56.692950000000000000
          Top = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 56.692950000000000000
          Top = 166.299320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'E-MAIL:')
          ParentFont = False
        end
        object data_set_report_clientcliente_id1: TfrxMemoView
          Left = 94.488250000000000000
          Top = 15.118120000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_id'
          DataSet = data_set_report_client
          DataSetName = 'data_set_report_client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8W = (
            '[data_set_report_client."cliente_id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 377.953000000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 377.953000000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 377.953000000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 377.953000000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 377.953000000000000000
          Top = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 377.953000000000000000
          Top = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 56.692950000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DATA NASC.:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 359.055350000000000000
          Top = 34.015770000000000000
          Height = 170.078850000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Height = 170.078850000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 680.315400000000000000
          Top = 34.015770000000000000
          Height = 170.078850000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 56.692950000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DATA CAD.:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 377.953000000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 37.795300000000000000
          Top = 204.094620000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 680.315400000000000000
          Top = 204.094620000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 37.795300000000000000
          Top = 241.889920000000000000
          Width = 642.520100000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 680.315400000000000000
          Top = 204.094620000000000000
          Width = -642.520100000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 642.520100000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object data_set_report_client: TfrxDBDataset
    UserName = 'data_set_report_client'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cliente_id=cliente_id'
      'cliente_nome=cliente_nome'
      'cliente_endereco=cliente_endereco'
      'cliente_num_residencia=cliente_num_residencia'
      'cliente_cep=cliente_cep'
      'cliente_bairro=cliente_bairro'
      'cliente_cidade=cliente_cidade'
      'cliente_estado=cliente_estado'
      'cliente_rg=cliente_rg'
      'cliente_cpf=cliente_cpf'
      'cliente_telefone=cliente_telefone'
      'cliente_celular=cliente_celular'
      'cliente_email=cliente_email'
      'cliente_data_nasc=cliente_data_nasc'
      'cliente_data_cad=cliente_data_cad'
      'cliente_situacao=cliente_situacao')
    DataSet = sql_print_clients
    BCDToCurrency = False
    Left = 240
    Top = 272
  end
end
