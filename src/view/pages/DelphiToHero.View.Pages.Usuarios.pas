unit DelphiToHero.View.Pages.Usuarios;

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
  DelphiToHero.View.Pages.Form.Template,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Bind4D, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  [ClassToBind('', 'id', 'Cadastro de Usuários')]

  TpageUsuarios = class(TfrmTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pageUsuarios: TpageUsuarios;

implementation

{$R *.dfm}

end.
