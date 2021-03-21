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
  RESTRequest4D,
  DelphiToHero.View.Styles.Colors, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmTemplate = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnPrincipal: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMain: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainBody: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainBodyData: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainTopBodyMenu: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainBodyTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainDataForm: TPanel;

    [ComponentBindStyle(COLOR_C2, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainBodyTopLine: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainTopBodySearch: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND_TOP, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnMainTopBodySearchLine: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnTopBody: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND_TOP, FONT_H6, FONT_COLOR3, FONT_NAME)]
    lblPesquisar: TLabel;

    [ComponentBindStyle(COLOR_BACKGROUND_TOP, FONT_H5, FONT_COLOR3, FONT_NAME)]
    lblTitulo: TLabel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H55, COLOR_BACKGROUND_TOP, FONT_NAME)]
    edtPesquisa: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H8, FONT_COLOR3, FONT_NAME)]
    SpeedButton2: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H8, FONT_COLOR3, FONT_NAME)]
    SpeedButton3: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H8, FONT_COLOR3, FONT_NAME)]
    SpeedButton4: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H8, FONT_COLOR3, FONT_NAME)]
    SpeedButton5: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H8, FONT_COLOR3, FONT_NAME)]
    SpeedButton1: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H55, FONT_COLOR4, FONT_NAME)]
    DBGrid1: TDBGrid;

    ImageList1: TImageList;
    FDMemTable: TFDMemTable;
    DataSource: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    FEndPoint: string;
    FPK: string;
    FSort: string;
    FTitle: string;
    FOrder: string;

    procedure ApplyStyle;
    procedure getEndPoint;
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
  lblTitulo.Caption := FTitle;
  pnMainDataForm.Visible := False;

  DBGrid1.TitleFont.Size := FONT_H5;
  DBGrid1.TitleFont.Name := 'Segoe UI';
  DBGrid1.TitleFont.Color := FONT_COLOR4;
end;

procedure TfrmTemplate.getEndPoint;
begin
  TRequest
    .New
      .BaseURL('http://localhost:9000' + FEndPoint)
      .Accept('application/json')
      .DataSetAdapter(FDMemTable)
      .Get;
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);
begin
  TBind4D
    .New
      .Form(Self)
      .BindFormRest(FEndPoint, FPK, FSort, FOrder)
      .BindFormDefault(FTitle).SetStyleComponents;
  ApplyStyle;
  getEndPoint;
end;

function TfrmTemplate.Render: TForm;
begin
  result := Self;
end;

procedure TfrmTemplate.UnRender;
begin

end;

end.
