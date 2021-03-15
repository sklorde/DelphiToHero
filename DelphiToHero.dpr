program DelphiToHero;

uses
  Vcl.Forms,
  DelphiToHero.View.Main in 'src\view\DelphiToHero.View.Main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
