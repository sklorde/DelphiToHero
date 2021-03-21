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
  Bind4D,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.WinXPanels,
  DelphiToHero.View.Styles.Colors;

type
  [FormRest('/usuario', 'id', 'nome', 'asc')]
  [FormDefault('Cadastro de Usuários')]
  TpageUsuarios = class(TfrmTemplate)
    StackPanel: TStackPanel;

    [ComponentBindStyle(clBtnFace, FONT_H55, FONT_COLOR3, FONT_NAME)]
    lblCodigo: TLabel;

    [FieldJsonBind('id'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('id', ftString, False, 0, 'Código')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H55, FONT_COLOR3, FONT_NAME)]
    edtCodigo: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H55, FONT_COLOR3, FONT_NAME)]
    lblNome: TLabel;

    [FieldJsonBind('nome'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('nome', ftString, True, 20, 'Nome')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H55, FONT_COLOR3, FONT_NAME)]
    edtNome: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H55, FONT_COLOR3, FONT_NAME)]
    lblTelefone: TLabel;

    [FieldJsonBind('telefone'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('telefone', ftString, True, 20, 'Telefone', '!\(##\) #####-####;0;')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H55, FONT_COLOR3, FONT_NAME, teCell)]
    edtTelefone: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H55, FONT_COLOR3, FONT_NAME)]
    lblEmail: TLabel;

    [FieldJsonBind('email'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('email', ftString, True, 20, 'E-mail')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H55, FONT_COLOR3, FONT_NAME)]
    edtEmail: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H55, FONT_COLOR3, FONT_NAME)]
    lblCPF: TLabel;

    [FieldJsonBind('cpf'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('cpf', ftString, True, 20,'CPF', '###.###.###-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H55, FONT_COLOR3, FONT_NAME, teCPF)]
    edtCPF: TEdit;
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
