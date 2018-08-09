unit unit_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  Tfrm_name = class(TForm)
    StatusBar1: TStatusBar;
    main_menu: TMainMenu;
    Arquivo1: TMenuItem;
    fechar2: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure fechar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_name: Tfrm_name;

implementation

{$R *.dfm}

uses unit_clients, unit_data_module;

procedure Tfrm_name.Clientes1Click(Sender: TObject);
begin
  //frm_clients_register := frm_clients_register.Create(self);
  frm_clients_register.ShowModal;
end;

procedure Tfrm_name.fechar2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_name.Timer1Timer(Sender: TObject);
begin

  StatusBar1.Panels[0].Text := 'Sistema de Gerenciamento de Clientes'
  + '      -      '
  + 'Horário: ' + FormatDateTime('hh:mm:ss', Now)
  + '      -      '
  + 'Data: '    + FormatDateTime('dddd, dd "de" mmmm "de" yyyy', Now);

  StatusBar1.Font.Size := 10;

end;

end.
