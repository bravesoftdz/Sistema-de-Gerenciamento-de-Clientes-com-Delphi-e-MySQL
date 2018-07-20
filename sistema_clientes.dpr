program sistema_clientes;

uses
  Vcl.Forms,
  unit_main in 'source\unit_main.pas' {frm_name},
  unit_data_module in 'source\unit_data_module.pas' {frm_data_module: TDataModule},
  unit_clients in 'source\unit_clients.pas' {frm_clients_register};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_name, frm_name);
  Application.CreateForm(Tfrm_data_module, frm_data_module);
  Application.CreateForm(Tfrm_clients_register, frm_clients_register);
  Application.Run;
end.
