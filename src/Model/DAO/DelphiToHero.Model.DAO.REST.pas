unit DelphiToHero.Model.DAO.REST;

interface

uses
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.Forms,
  RESTRequest4D,
  Bind4D,
  DelphiToHero.Model.DAO.Interfaces;

type
  TDAORest = class(TInterfacedObject, iDAOInterface)
    private
      FDMemTable : TFDMemTable;
      FBaseURL : string;
      FForm : TForm;
      FEndPoint, FPK, FOrder, FSort: string;
    public
      Constructor Create(aForm: TForm);
      Destructor Destroy; override;
      class function New(aForm: TForm) : iDAOInterface;

      function Get    : iDAOInterface;
      function Post   : iDAOInterface;
      function Put    : iDAOInterface;
      function Delete : iDAOInterface;
      function DataSource(aValue : TDataSource) : IDAOInterface;
      function Dataset: TDataSet;
  end;

implementation

Constructor TDAORest.Create(aForm: TForm);
begin
  FDMemTable := TFDMemTable.Create(nil);
  FBaseURL   := 'http://localhost:9000';
  FForm      := aForm;

  TBind4D
    .New
    .Form(FForm)
    .BindFormRest(FEndPoint, FPK, FSort, FOrder);
end;

destructor TDAORest.Destroy;
begin
  FDMemTable.Free;
end;

function TDAORest.DataSet: TDataset;
begin
  result := FDMemTable;
end;

function TDAORest.DataSource(aValue: TDataSource): iDAOInterface;
begin
  result := Self;
  aValue.DataSet := FDMemTable;
end;

function TDAORest.Delete: iDAOInterface;
begin

end;

function TDAORest.Get: iDAOInterface;
begin
  TRequest
    .New
      .BaseURL(FBaseURL + FEndPoint)
      .Accept('application/json')
      .DataSetAdapter(FDMemTable)
      .Post;
end;

function TDAORest.Post: iDAOInterface;
begin

end;

function TDAORest.Put: iDAOInterface;
begin

end;

class function TDAORest.New(aForm: TForm) : iDAOInterface;
begin
  result := Self.Create(aForm);
end;

end.
