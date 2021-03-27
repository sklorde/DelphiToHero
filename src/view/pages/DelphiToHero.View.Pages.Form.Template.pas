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
  DelphiToHero.View.Styles.Colors,
  Vcl.WinXPanels,
  System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    DBGrid: TDBGrid;

    ImageList1: TImageList;
    FDMemTable: TFDMemTable;
    DataSource: TDataSource;
    pnMainCadastroBottom: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    FEndPoint: string;
    FPK: string;
    FSort: string;
    FTitle: string;
    FOrder: string;

    procedure ApplyStyle;
    procedure getEndPoint;
    procedure alterListForm;
    procedure formatList;
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
  lblTitulo.Caption      := FTitle;
  pnMainDataForm.Visible := False;
  pnMainDataForm.Align   := TAlign.alClient;

  DBGrid.TitleFont.Size := FONT_H5;
  DBGrid.TitleFont.Name := 'Segoe UI';
  DBGrid.TitleFont.Color := FONT_COLOR4;
end;

procedure TfrmTemplate.DBGridDblClick(Sender: TObject);
begin
  TBind4D.New.Form(Self).BindDataSetToForm(FDMemTable);
  alterListForm;
end;

procedure TfrmTemplate.getEndPoint;
begin
  TRequest
    .New
      .BaseURL('http://localhost:9000' + FEndPoint)
      .Accept('application/json')
      .DataSetAdapter(FDMemTable)
      .Get;

  formatList;
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);
begin
  TBind4D
    .New
      .Form(Self)
      .BindFormRest(FEndPoint, FPK, FSort, FOrder)
      .BindFormDefault(FTitle)
      .SetStyleComponents;
  ApplyStyle;
  getEndPoint;
end;

procedure TfrmTemplate.FormResize(Sender: TObject);
begin
  getEndPoint;
end;

function TfrmTemplate.Render: TForm;
begin
  result := Self;
end;

procedure TfrmTemplate.SpeedButton4Click(Sender: TObject);
begin
  TBind4D.New.Form(Self).ClearFieldForm;
  alterListForm;
end;

procedure TfrmTemplate.SpeedButton6Click(Sender: TObject);
var
  aJson: TJSONObject;
begin
  aJson := TBind4D.New.Form(Self).FormToJson(fbDelete);

  try
    TRequest
    .New
      .BaseURL('http://localhost:9000' + FEndPoint)
      .Accept('application/json')
      .Delete;
  finally
    aJson.Free;
  end;

  alterListForm;
  getEndPoint;
end;

procedure TfrmTemplate.SpeedButton7Click(Sender: TObject);
var
  aJson: TJSONObject;
begin
  aJson := TBind4D.New.Form(Self).FormToJson(fbPost);
  try
    TRequest
    .New
      .BaseURL('http://localhost:9000' + FEndPoint)
      .Accept('application/json')
      .AddBody(aJson.ToString)
      .Post;
  finally
    aJson.Free;
  end;

  alterListForm;
  getEndPoint;
end;

procedure TfrmTemplate.SpeedButton8Click(Sender: TObject);
begin
  alterListForm;
end;

procedure TfrmTemplate.UnRender;
begin

end;

procedure TfrmTemplate.formatList;
begin
  TBind4D.New.Form(self).BindFormatListDataSet(FDMemTable, DBGrid);
end;

procedure TfrmTemplate.alterListForm;
begin
  pnMainDataForm.Visible := not pnMainDataForm.Visible;
  DBGrid.Visible := not DBGrid.Visible;
end;

end.
