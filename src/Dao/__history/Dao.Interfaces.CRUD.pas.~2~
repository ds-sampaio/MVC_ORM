unit Dao.Interfaces.CRUD;

interface

uses
  Data.DB;

type
  iCRUD<T: Class> = interface
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

end.
