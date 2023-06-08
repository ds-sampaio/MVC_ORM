unit Dao.CRUDSimpleORM;

interface

uses
  SimpleInterface,
  SimpleDAO,
  SimpleQueryFiredac,
  Dao.Interfaces.CRUD,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Model.Interfaces,
  Dao.resource.factory;

type
  TCRUDSimpleORM<T: Class, constructor> = class(TInterfacedObject, iCRUD<T>)
    private
      FParent : T;
      FConexao : iConexao;
      FConn : iSimpleQuery;
      FDao : iSimpleDAO<T>;
      FDataSource : TDataSource;
    public
      constructor Create(aParent : T);
      destructor Destroy; override;
      class function New(aParent : T) : iCRUD<T>;
      function ListarTodos: iCRUD<T>;
      function ListarPorId(aId : Integer): iCRUD<T>;
      function ListarPor(aField : String; aValue : Variant): iCRUD<T>;
      function Inserir : iCRUD<T>;
      function Atualizar : iCRUD<T>;
      function Excluir : iCRUD<T>; overload;
      function Excluir(aField, aValue : String) : iCRUD<T>; overload;
      function DataSource(var aDataSource : TDatasource) : iCRUD<T>;
      function This : T; //retorna o proprio objeto do tipo T
  end;

implementation

{ TCRUDSimpleORM<T> }

function TCRUDSimpleORM<T>.Atualizar: iCRUD<T>;
begin
  Result := Self;
  FDAO.Update(FParent);
end;

constructor TCRUDSimpleORM<T>.Create(aParent: T);
begin
  FParent     := aParent;
  FDataSource := TDatasource.Create(nil);
  FConexao    := TResource.New.Conexao;
  FConn       := TSimpleQueryFiredac.New(TFDConnection(FConexao.Conneted));
  FDao        := TSimpleDAO<T>.New(FConn).DataSource(FDataSource);
end;

function TCRUDSimpleORM<T>.DataSource(var aDataSource: TDatasource): iCRUD<T>;
begin
  Result := Self;
  aDataSource := FDataSource;
end;

destructor TCRUDSimpleORM<T>.Destroy;
begin
  FDataSource.DisposeOf;
  inherited;
end;

function TCRUDSimpleORM<T>.Excluir(aField, aValue: String): iCRUD<T>;
begin
  Result := Self;
  FDAO.Delete(aField,aValue);
end;

function TCRUDSimpleORM<T>.Excluir: iCRUD<T>;
begin
  Result := Self;
  FDAO.Delete(FParent);
end;

function TCRUDSimpleORM<T>.Inserir: iCRUD<T>;
begin
  Result := Self;
  FDAO.Insert(FParent);
end;

function TCRUDSimpleORM<T>.ListarPor(aField: String; aValue: Variant): iCRUD<T>;
begin
  Result := Self;
  FDAO.Find(aField,aValue);
end;

function TCRUDSimpleORM<T>.ListarPorId(aId: Integer): iCRUD<T>;
begin
  Result := Self;
  FParent := FDAO.Find(aId);
end;

function TCRUDSimpleORM<T>.ListarTodos: iCRUD<T>;
begin
  Result := Self;
  FDAO.Find(False);
end;

class function TCRUDSimpleORM<T>.New(aParent: T): iCRUD<T>;
begin
  Result := Self.Create(aParent);
end;

function TCRUDSimpleORM<T>.This: T;
begin
  Result := FParent;
end;

end.
