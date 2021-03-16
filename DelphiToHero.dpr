program DelphiToHero;

uses
  Vcl.Forms,
  DelphiToHero.View.Main in 'src\view\DelphiToHero.View.Main.pas' {frmPrincipal},
  DelphiToHero.View.Styles.Colors in 'src\view\styles\DelphiToHero.View.Styles.Colors.pas',
  DelphiToHero.View.Pages.Principal in 'src\view\pages\DelphiToHero.View.Pages.Principal.pas' {pagePrincipal},
  DelphiToHero.View.Routers in 'src\view\routers\DelphiToHero.View.Routers.pas',
  DelphiToHero.View.Pages.Form.Template in 'src\view\pages\DelphiToHero.View.Pages.Form.Template.pas' {frmTemplate},
  DelphiToHero.View.Pages.Usuarios in 'src\view\pages\DelphiToHero.View.Pages.Usuarios.pas' {pageUsuarios};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTemplate, frmTemplate);
  Application.CreateForm(TpageUsuarios, pageUsuarios);
  Application.Run;
end.
