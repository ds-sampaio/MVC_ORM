unit controller.dto.produto;

interface

uses
  controller.dto.interfaces, Dao.Interfaces.CRUD, Model.Produto,
  Dao.CRUDSimpleORM;

type
  TProdutoDTO = class(TInterfacedObject,iProduto)
    private
      FEntity : TProduto;
      FService: iCRUD<TProduto>;
    public
       constructor Create;
       destructor Destroy; override;
       class function New : iProduto;
       function id(aValue : Integer) : iProduto; overload;
       function id: integer; overload;
       function descricao(aValue : string) : iProduto; overload;
       function descricao: string; overload;
       function preco(aValue : double) : iProduto; overload;
       function preco: double; overload;
       function Build : iCRUD<TProduto>;
  end;


implementation

{ TProdutoDTO }


function TProdutoDTO.Build: iCRUD<TProduto>;
begin
  Result := FService;
end;

constructor TProdutoDTO.Create;
begin
  FEntity := TProduto.Create;  //Model
  FService:= TCRUDSimpleORM<TProduto>.New(FEntity);
end;

function TProdutoDTO.descricao(aValue: string): iProduto;
begin
  Result := Self;
  FEntity.descricao := aValue; //alimentando o Model
end;

function TProdutoDTO.descricao: string;
begin
  Result := FEntity.descricao;
end;

destructor TProdutoDTO.Destroy;
begin
  FEntity.Free;
  inherited;
end;

function TProdutoDTO.id(aValue: Integer): iProduto;
begin
  Result := Self;
  FEntity.id := aValue;
end;

function TProdutoDTO.id: integer;
begin
  Result := FEntity.id;
end;

class function TProdutoDTO.New: iProduto;
begin
  Result := Self.Create;
end;

function TProdutoDTO.preco(aValue: double): iProduto;
begin
  Result := Self;
  FEntity.preco := aValue;
end;

function TProdutoDTO.preco: double;
begin
  Result := FEntity.preco;
end;

end.
