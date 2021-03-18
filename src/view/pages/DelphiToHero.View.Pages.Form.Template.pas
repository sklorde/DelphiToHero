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
  Router4D.Interfaces,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Bind4D,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmTemplate = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel9: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    FEndPoint: string;
    FPK: string;
    FTitle: string;

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
  Label1.Caption := FTitle;

  Panel12.Visible := False;

  Panel1.Color := COLOR_BACKGROUND;
  Panel2.Color := COLOR_C1;
  Panel3.Color := COLOR_BACKGROUND;
  Panel4.Color := COLOR_C1;
  Panel5.Color := COLOR_BACKGROUND;
  Panel6.Color := COLOR_BACKGROUND;

  Panel7.Color := COLOR_C2;
  Panel8.Color := COLOR_BACKGROUND;
  Panel9.Color := COLOR_BACKGROUND;
  Panel10.Color := COLOR_BACKGROUND_TOP;
  Panel11.Color := COLOR_BACKGROUND;
  Panel12.Color := COLOR_BACKGROUND;

  Label1.Font.Size  := FONT_H5;
  Label1.Font.Color := FONT_COLOR3;
  Label1.Font.Name  := 'Segoe UI';

  Label2.Font.Size  := FONT_H6;
  Label2.Font.Color := COLOR_BACKGROUND_TOP;
  Label2.Font.Name  := 'Segoe UI';

  Edit1.Font.Size   := FONT_H55;
  Edit1.Font.Color  := COLOR_BACKGROUND_TOP;
  Edit1.Color       := COLOR_BACKGROUND;

  DBGrid1.Font.Size := FONT_H5;
  DBGrid1.Font.Color := FONT_COLOR4;
  DBGrid1.Font.Name := 'Segoe UI';
  DBGrid1.TitleFont.Size := FONT_H5;
  DBGrid1.TitleFont.Name := 'Segoe UI';
  DBGrid1.TitleFont.Color := FONT_COLOR4;
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);
begin
  TBindFormJson.New.BindClassToForm(Self, FEndPoint, FPK, FTitle);
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
