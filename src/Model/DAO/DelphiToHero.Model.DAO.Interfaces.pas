unit DelphiToHero.Model.DAO.Interfaces;

interface

uses
  Data.DB;

type
  iDAOInterface = interface
    function Get    : iDAOInterface;
    function Post   : iDAOInterface;
    function Put    : iDAOInterface;
    function Delete : iDAOInterface;
    function DataSource(aValue : TDataSource) : IDAOInterface;
    function Dataset: TDataSet;
  end;

implementation

end.
