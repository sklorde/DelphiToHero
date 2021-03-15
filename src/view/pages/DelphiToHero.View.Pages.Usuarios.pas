unit DelphiToHero.View.Pages.Usuarios;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TPageUsuarios = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    lblTitulo: TLabel;
  private
    { Private declarations }
  public
    function Render: TForm;
    procedure UnRender;
  end;

var
  pageUsuarios: TpageUsuarios;

implementation

{$R *.dfm}

{ TpageUsuarios }

function TpageUsuarios.Render: TForm;
begin
  result := Self;
end;

procedure TpageUsuarios.UnRender;
begin
  //
end;

end.
