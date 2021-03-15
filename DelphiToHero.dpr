program DelphiToHero;

uses
  Vcl.Forms,
  DelphiToHero.View.Main in 'src\view\DelphiToHero.View.Main.pas' {frmPrincipal},
  DelphiToHero.View.Styles.Colors in 'src\view\styles\DelphiToHero.View.Styles.Colors.pas',
  DelphiToHero.View.Pages.Principal in 'src\view\pages\DelphiToHero.View.Pages.Principal.pas' {pagePrincipal},
  DelphiToHero.View.Pages.Usuarios in 'src\view\pages\DelphiToHero.View.Pages.Usuarios.pas' {pageUsuarios},
  DelphiToHero.View.Routers in 'src\view\routers\DelphiToHero.View.Routers.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
