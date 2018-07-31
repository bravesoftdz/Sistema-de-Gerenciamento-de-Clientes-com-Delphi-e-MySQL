unit unit_clients;

interface

uses
  // insercao manual da biblioteca 'Data.DB:'
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tfrm_clients_register = class(TForm)
    PageControl1: TPageControl;
    tbl_clients_query: TTabSheet;
    tbl_clients_register: TTabSheet;
    lbl_id: TLabel;
    lbl_rg: TLabel;
    lbl_cidade: TLabel;
    lbl_situacao: TLabel;
    lbl_nome: TLabel;
    lbl_endereco: TLabel;
    lbl_bairro: TLabel;
    lbl_cpf: TLabel;
    lbl_data_nasc: TLabel;
    lbl_data_cad: TLabel;
    lbl_estado: TLabel;
    lbl_celular: TLabel;
    lbl_telefone: TLabel;
    lbl_email: TLabel;
    lbl_cep: TLabel;
    btn_insert: TSpeedButton;
    btn_edit: TSpeedButton;
    btn_save: TSpeedButton;
    btn_remove: TSpeedButton;
    btn_cancel: TSpeedButton;
    btn_close: TSpeedButton;
    btn_search: TSpeedButton;
    lbl_insert: TLabel;
    lbl_edit: TLabel;
    lbl_save: TLabel;
    lbl_remove: TLabel;
    lbl_cancel: TLabel;
    lbl_close: TLabel;
    lbl_search: TLabel;
    lbl_num_residencia: TLabel;
    txt_id: TDBEdit;
    txt_data_cad: TDBEdit;
    txt_nome: TDBEdit;
    txt_rg: TDBEdit;
    txt_cpf: TDBEdit;
    txt_data_nasc: TDBEdit;
    txt_endereco: TDBEdit;
    txt_num_residencia: TDBEdit;
    txt_cep: TDBEdit;
    txt_bairro: TDBEdit;
    txt_cidade: TDBEdit;
    txt_telefone: TDBEdit;
    txt_celular: TDBEdit;
    txt_email: TDBEdit;
    cb_estado: TDBComboBox;
    cb_situacao: TDBComboBox;
    btn_return: TButton;
    DBGrid1: TDBGrid;
    btn_print: TButton;
    btn_query: TButton;
    txt_query: TEdit;
    lbl_query: TLabel;
    rg_options_query: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    lbl_msg: TLabel;
    btn_show_all: TButton;
    txt_print: TEdit;
    procedure btn_insertClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_removeClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure btn_returnClick(Sender: TObject);
    procedure rg_options_queryClick(Sender: TObject);
    procedure btn_queryClick(Sender: TObject);
    procedure btn_show_allClick(Sender: TObject);
    procedure txt_queryKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_printClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    // ctrl + shift + c = criar procedimento:
    procedure SettingButtons;
    procedure QuantityRegisters;
    procedure DisableTextBox;
    procedure EnableTextBox;
  public
    { Public declarations }
  end;

var
  frm_clients_register: Tfrm_clients_register;

implementation

{$R *.dfm}

uses unit_data_module;

procedure Tfrm_clients_register.btn_cancelClick(Sender: TObject);
begin
  // chama o metodo para cancelar as altera��es na 'tabela':
  frm_data_module.tbl_clients.Cancel;

  // chama a funcao que configura os botoes:
  SettingButtons;
end;

procedure Tfrm_clients_register.btn_closeClick(Sender: TObject);
begin
  // se estado de insercao ou edicao:
  if frm_data_module.tbl_clients.State in [dsInsert, dsEdit] then
     begin
       ShowMessage('Salve ou Cancele o Registro de Cliente antes de sair.');
       exit;
     end
     else
     begin
       close;
     end;
end;

procedure Tfrm_clients_register.btn_editClick(Sender: TObject);
begin
  // chama o metodo de edicao para a 'tabela':
  frm_data_module.tbl_clients.Edit;

  // chama a funcao que configura os botoes:
  SettingButtons;

  // ativa as caixas de texto:
  EnableTextBox;
end;

procedure Tfrm_clients_register.btn_insertClick(Sender: TObject);
begin
  // iniciando a insercao na tabela:
  frm_data_module.tbl_clients.Active := True;
  frm_data_module.tbl_clients.Insert;

  // tratamento da data de cadastro:
  frm_data_module.tbl_clientscliente_data_cad.Value := date;
  frm_data_module.tbl_clientscliente_cidade.Value := 'Santa Cruz do Sul';
  frm_data_module.tbl_clientscliente_estado.Value := 'RS';
  frm_data_module.tbl_clientscliente_situacao.Value := 'Ativo';

  // posiciona o 'cursor' no txt_nome:
  txt_nome.SetFocus;

  // chama a funcao que configura os botoes:
  SettingButtons;

  // ativa as caixas de texto:
  EnableTextBox;
end;

procedure Tfrm_clients_register.btn_printClick(Sender: TObject);
begin
  with frm_data_module.sql_print_clients do
  begin
    Close;
    SQL.Clear;

    if txt_print.Text = '' then
    begin
      SQL.Add('select * from clientes');
    end
    else
    begin
      SQL.Add('select * from clientes where cliente_id = :codigo');
      ParamByName('codigo').Value := strToInt(txt_print.Text);
    end;

    Open;
    frm_data_module.report_client.LoadFromFile(GetCurrentDir + '\reports\report_client.fr3');
    frm_data_module.report_client.ShowReport();

  end;
end;

procedure Tfrm_clients_register.btn_queryClick(Sender: TObject);
begin


  // verifica se o campo de consulta n�o esta vazio:
  if txt_query.Text = '' then
    begin
      ShowMessage('Digite a informa��o do Cliente a ser consultada.');
      txt_query.SetFocus;
      exit;
    end;


  // passa mais de uma instru��o ao mesmo objeto:
  with frm_data_module.sql_query_clients do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from clientes');

    case rg_options_query.ItemIndex of

      0:
      begin
        SQL.Add('where cliente_id = :codigo');
        ParamByName('codigo').Value := txt_query.Text;
      end;

      1:
      begin
        SQL.Add('where cliente_nome like :nome');
        ParamByName('nome').Value := '%' + txt_query.Text + '%';
      end;

      2:
      begin
        SQL.Add('where cliente_rg = :rg');
        ParamByName('rg').Value := txt_query.Text;
      end;

      3:
      begin
        SQL.Add('where cliente_cpf = :cpf');
        ParamByName('cpf').Value := txt_query.Text;
      end;

      4:
      begin
        SQL.Add('where cliente_data_nasc = :data_nasc');
        ParamByName('data_nasc').AsDate := strToDate(formatDateTime('dd/mm/yyyy', DateTimePicker1.Date));
        txt_query.Text := 'null';
      end;

    end;

    Open;

    QuantityRegisters;

  end;

end;

procedure Tfrm_clients_register.btn_removeClick(Sender: TObject);
begin

  frm_data_module.sql_query_clients.Close;
  frm_data_module.sql_query_clients.SQL.Clear;
  frm_data_module.sql_query_clients.SQL.Add('select * from clientes where cliente_id = :codigo');
  frm_data_module.sql_query_clients.ParamByName('codigo').Value := txt_id.Text;
  frm_data_module.sql_query_clients.Open;

  // ao digitar 'case' + pressionar tab, cria a estrutura do case:
  case Application.MessageBox(('Deseja excluir o Cliente ?') , 'Exclus�o de Cliente', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
    begin
      // se sim, deleta o cliente:
      frm_data_module.sql_query_clients.Delete;
      ShowMessage('Cliente exclu�do com sucesso.');
    end;

      IDNO:
      begin
        exit;
      end;

  end;

end;

procedure Tfrm_clients_register.btn_saveClick(Sender: TObject);
begin
  // chama o metodo para salvar os dados na 'tabela':
  frm_data_module.tbl_clients.Post;

  // mostra uma mensagem de sucesso:
  ShowMessage('Cadastro de Cliente realizado com sucesso.');

  // chama a funcao que configura os botoes:
  SettingButtons;
end;

procedure Tfrm_clients_register.btn_searchClick(Sender: TObject);
begin
  PageControl1.TabIndex := 1;

  // desabilita 'tabela' de cadastro:
  tbl_clients_register.TabVisible := False;

  // habilita 'tabela' de consulta:
  tbl_clients_query.TabVisible := True;

  // refresh no bd:
  frm_data_module.sql_query_clients.Open;
  frm_data_module.sql_query_clients.Refresh;
  QuantityRegisters;

end;

procedure Tfrm_clients_register.btn_show_allClick(Sender: TObject);
begin
  frm_data_module.sql_query_clients.Close;
  frm_data_module.sql_query_clients.SQL.Clear;
  frm_data_module.sql_query_clients.SQL.Add('select * from clientes');
  frm_data_module.sql_query_clients.Open;

  QuantityRegisters;

  btn_print.Enabled := True;
end;

procedure Tfrm_clients_register.DBGrid1CellClick(Column: TColumn);
begin
  txt_print.Text := intToStr(frm_data_module.sql_query_clientscliente_id.Value);
  btn_print.Enabled := True;
end;

procedure Tfrm_clients_register.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  tbl_clients_query.TabVisible := False;
  tbl_clients_register.TabVisible := True;

  txt_id.Text := intToStr(frm_data_module.sql_query_clientscliente_id.Value);
  txt_data_cad.Text := dateToStr(frm_data_module.sql_query_clientscliente_data_cad.Value);

  txt_nome.Text := frm_data_module.sql_query_clientscliente_nome.Value;
  txt_rg.Text := frm_data_module.sql_query_clientscliente_rg.Value;
  txt_cpf.Text := frm_data_module.sql_query_clientscliente_cpf.Value;
  txt_data_nasc.Text := dateToStr(frm_data_module.sql_query_clientscliente_data_nasc.Value);

  txt_endereco.Text := frm_data_module.sql_query_clientscliente_endereco.Value;
  txt_num_residencia.Text := frm_data_module.sql_query_clientscliente_num_residencia.Value;
  txt_cep.Text := frm_data_module.sql_query_clientscliente_cep.Value;
  txt_bairro.Text := frm_data_module.sql_query_clientscliente_bairro.Value;
  txt_cidade.Text := frm_data_module.sql_query_clientscliente_cidade.Value;
  cb_estado.Text := frm_data_module.sql_query_clientscliente_estado.Value;

  txt_telefone.Text := frm_data_module.sql_query_clientscliente_telefone.Value;
  txt_celular.Text := frm_data_module.sql_query_clientscliente_celular.Value;
  txt_email.Text := frm_data_module.sql_query_clientscliente_email.Value;

  cb_situacao.Text := frm_data_module.sql_query_clientscliente_situacao.Value;

  // desabilita as caixas de texto:
  DisableTextBox;

end;

procedure Tfrm_clients_register.DisableTextBox;
begin
  txt_id.Enabled := False;
  txt_data_cad.Enabled := False;

  txt_nome.Enabled := False;
  txt_rg.Enabled := False;
  txt_cpf.Enabled := False;
  txt_data_nasc.Enabled := False;

  txt_endereco.Enabled := False;
  txt_num_residencia.Enabled := False;
  txt_cep.Enabled := False;
  txt_bairro.Enabled := False;
  txt_cidade.Enabled := False;
  cb_estado.Enabled := False;

  txt_telefone.Enabled := False;
  txt_celular.Enabled := False;
  txt_email.Enabled := False;

  cb_situacao.Enabled := False;
end;

procedure Tfrm_clients_register.EnableTextBox;
begin
  txt_id.Enabled := True;
  txt_data_cad.Enabled := True;

  txt_nome.Enabled := True;
  txt_rg.Enabled := True;
  txt_cpf.Enabled := True;
  txt_data_nasc.Enabled := True;

  txt_endereco.Enabled := True;
  txt_num_residencia.Enabled := True;
  txt_cep.Enabled := True;
  txt_bairro.Enabled := True;
  txt_cidade.Enabled := True;
  cb_estado.Enabled := True;

  txt_telefone.Enabled := True;
  txt_celular.Enabled := True;
  txt_email.Enabled := True;

  cb_situacao.Enabled := True;
end;

procedure Tfrm_clients_register.btn_returnClick(Sender: TObject);
begin
  // volta para a primeira pagina:
  PageControl1.TabIndex := 0;

  // habilita a 'tabela' de cadastro:
  tbl_clients_register.TabVisible := true;

  // desabilita 'tabela' de consulta:
  tbl_clients_query.TabVisible := false;
end;

procedure Tfrm_clients_register.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  tbl_clients_query.TabVisible := False;

  btn_save.Enabled := False;

  btn_cancel.Enabled := false;

  // desabilita a visualiza��o do 'txt_query':
  txt_query.Visible := False;

  // desabilita a visualiza��o do 'lbl_query':
  lbl_query.Visible := false;

  // desabilita a visualiza��o do 'DateTimePicker1':
  DateTimePicker1.Visible := False;

  // desabilita o 'btn_print':
  btn_print.Enabled := False;

  // desabilita o 'btn_query':
  btn_query.Enabled := false;
end;

procedure Tfrm_clients_register.QuantityRegisters;
begin
    // caso nao encontre clientes:
    if frm_data_module.sql_query_clients.RecordCount = 0 then
    begin
      lbl_msg.Visible := true;
      lbl_msg.Caption := '';
      lbl_msg.Caption := 'Status: nenhum cliente encontrado.';

      // desabilita o botao imprimir:
      btn_print.Enabled := false;
    end;

    // caso encontre apenas 01 cliente:
    if frm_data_module.sql_query_clients.RecordCount = 1 then
    begin
      lbl_msg.Visible := true;
      lbl_msg.Caption := '';
      lbl_msg.Caption := 'Status: 1 cliente encontrado.';

      // habilita o botao imprimir:
      btn_print.Enabled := true;
    end;

    // caso encontre mais de 01 cliente:
    if frm_data_module.sql_query_clients.RecordCount > 1 then
    begin
      lbl_msg.Visible := true;
      lbl_msg.Caption := '';
      lbl_msg.Caption := 'Status: ' + IntToStr(frm_data_module.sql_query_clients.RecordCount) + ' clientes encontrados.';

      // habilita o botao imprimir:
      btn_print.Enabled := true;
    end;

end;

procedure Tfrm_clients_register.rg_options_queryClick(Sender: TObject);
begin

  case rg_options_query.ItemIndex of
    0:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o Codigo do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot�o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    1:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o Nome do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot�o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    2:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o RG do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot�o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    3:
    begin
      txt_query.Visible := true;
      txt_query.Clear;
      lbl_query.Visible := true;
      lbl_query.Caption := 'Digite o CPF do Cliente:';
      DateTimePicker1.Visible := false;

      // habilita o bot�o 'btn_query':
      btn_query.Enabled := true;

      txt_query.SetFocus;
    end;

    4:
    begin
      txt_query.Visible := false;

      lbl_query.Visible := true;
      lbl_query.Caption := 'Selecione a Data de Nasc. do Cliente:';
      DateTimePicker1.Visible := true;

      // habilita o bot�o 'btn_query':
      btn_query.Enabled := true;
    end;

  end;

end;

procedure Tfrm_clients_register.SettingButtons;
begin

  // verifica se o modo de insercao ja foi chamado. Se sim, desabilita os seguintes botoes:
  btn_insert.Enabled := frm_data_module.tbl_clients.State in [dsbrowse];
  btn_edit.Enabled := frm_data_module.tbl_clients.State in [dsbrowse];
  btn_remove.Enabled := frm_data_module.tbl_clients.State in [dsbrowse];

  // verifica se a 'tabela' esta em modo de insercao ou edicao. Se sim, habilita os seguintes botoes:
  btn_save.Enabled := frm_data_module.tbl_clients.State in [dsinsert, dsedit];
  btn_cancel.Enabled := frm_data_module.tbl_clients.State in [dsinsert, dsedit];

end;

procedure Tfrm_clients_register.txt_queryKeyPress(Sender: TObject;
  var Key: Char);
begin

  case rg_options_query.ItemIndex of
  0:
  begin
    if(key in ['0'..'9'] = false) and (word(key) <> VK_BACK) then
    begin
      ShowMessage('Este campo permite apenas a entrada de valores num�ricos.');
      // invalidar tecla:
      key := #0;
    end;
  end;

  2:
  begin
      if(key in ['0'..'9'] = false) and (word(key) <> VK_BACK) then
    begin
      ShowMessage('Este campo permite apenas a entrada de valores num�ricos.');
      // invalidar tecla:
      key := #0;
    end;
  end;

  3:
  begin
      if(key in ['0'..'9'] = false) and (word(key) <> VK_BACK) then
    begin
      ShowMessage('Este campo permite apenas a entrada de valores num�ricos.');
      // invalidar tecla:
      key := #0;
    end;
  end;

end;
end;

end.
