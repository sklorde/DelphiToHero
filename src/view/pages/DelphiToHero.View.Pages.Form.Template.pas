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
  Vcl.DBGrids,
  DelphiToHero.View.Styles.Colors;

type
  TfrmTemplate = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnPrincipal: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMain: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainBody: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainBodyData: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainTopBodyMenu: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainBodyTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainDataForm: TPanel;

    [ComponentBindStyle(COLOR_C2, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainBodyTopLine: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainTopBodySearch: TPanel;

    [ComponentBindStyle(COLOR_C2, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnMainTopBodySearchLine: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    pnTopBody: TPanel;

    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label2: TLabel;
    Edit1: TEdit;

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

{$R *.dfm}

{ TfrmTemplate }

procedure TfrmTemplate.ApplyStyle;
begin
  Label1.Caption := FTitle;
  pnMainDataForm.Visible := False;

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
