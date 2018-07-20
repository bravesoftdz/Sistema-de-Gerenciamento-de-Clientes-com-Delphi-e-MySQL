unit unit_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  Tfrm_name = class(TForm)
    status_bar: TStatusBar;
    main_menu: TMainMenu;
    Arquivo1: TMenuItem;
    Salvar1: TMenuItem;
    Fechar1: TMenuItem;
    fechar2: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Sair1: TMenuItem;
    pnl_top: TPanel;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_name: Tfrm_name;

implementation

{$R *.dfm}

uses unit_clients;

procedure Tfrm_name.Clientes1Click(Sender: TObject);
begin
  //frm_clients_register := frm_clients_register.Create(self);
  frm_clients_register.ShowModal;
end;

procedure Tfrm_name.Timer1Timer(Sender: TObject);
begin
  status_bar.Panels[3].Text := 'Hor�rio: ' + FormatDateTime('hh:mm:ss', Now);
  status_bar.Panels[4].Text := 'Data: ' + FormatDateTime('dddd, dd "de" mmmm "de" yyyy', Now);
end;

end.
