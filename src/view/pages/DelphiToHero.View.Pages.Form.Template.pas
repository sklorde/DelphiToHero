unit DelphiToHero.View.Pages.Form.Template;

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
  Vcl.ExtCtrls,
  Router4D.Interfaces, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  PngSpeedButton, PngImageList;

type
  TfrmTemplate = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    procedure ApplyStyle;
  public
    function Render: TForm;
    procedure UnRender;
  end;

var
  frmTemplate: TfrmTemplate;

implementation

uses
  DelphiToHero.View.Styles.Colors;

{$R *.dfm}

{ TfrmTemplate }

procedure TfrmTemplate.ApplyStyle;
begin
  Panel1.Color := COLOR_BACKGROUND;
  Panel2.Color := COLOR_C1;
  Panel3.Color := COLOR_BACKGROUND;
  Panel4.Color := COLOR_C1;

  Label1.Font.Size  := FONT_H5;
  Label1.Font.Color := FONT_COLOR3;
  Label1.Font.Name  := 'Segoe UI';
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TfrmTemplate.Render: TForm;
begin
  result := Self;
end;

procedure TfrmTemplate.UnRender;
begin

end;

end.
