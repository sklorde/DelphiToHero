unit DelphiToHero.View.Main;

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
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    pnMain: TPanel;
    pnMenu: TPanel;
    pnFull: TPanel;
    pnTop: TPanel;
    pnPrincipal: TPanel;
    pnLogo: TPanel;
    ImageList1: TImageList;
    btnPrincipal: TSpeedButton;
    btnUsuarios: TSpeedButton;
    imgLogo: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnPrincipalClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
  private
    procedure ApplyStyle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses DelphiToHero.View.Styles.Colors, Router4D,
  DelphiToHero.View.Pages.Principal;

procedure TfrmPrincipal.btnPrincipalClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Principal');
end;

procedure TfrmPrincipal.btnUsuariosClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Usuarios');
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ApplyStyle;

  TRouter4D.Render<TPagePrincipal>.SetElement(pnPrincipal, pnMain);
end;

procedure TfrmPrincipal.ApplyStyle;
begin
  pnMenu.Color    := COLOR_BACKGROUND_MENU;
  pnTop.Color     := COLOR_BACKGROUND_TOP;
  pnLogo.Color    := COLOR_BACKGROUND_DESTAK;
  Self.Font.Color := FONT_COLOR;
  Self.Font.Size  := FONT_H7;
end;

end.
