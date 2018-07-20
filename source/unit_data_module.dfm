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
    Left = 128
    Top = 168
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
    Left = 248
    Top = 168
  end
  object sql_print_clients: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 368
    Top = 168
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
end
