unit DelphiToHero.View.Pages.Principal;

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
  TPagePrincipal = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    lblTitulo: TLabel;
  private
    { Private declarations }
  public
    function Render: TForm;
    procedure Unrender;
  end;

var
  pagePrincipal: TpagePrincipal;

implementation

{$R *.dfm}

{ TPagePrincipal }

function TPagePrincipal.Render: TForm;
begin
  result := Self;
end;

procedure TPagePrincipal.Unrender;
begin
  //
end;

end.
