unit controller.dto.pessoa;

interface

uses
  controller.dto.interfaces, Dao.Interfaces.CRUD, Model.Pessoa,
  Dao.CRUDSimpleORM;

type
  TPessoaDTO = class(TInterfacedObject,iPessoa)
    private
      FEntity : TPessoa;
      FService: iCRUD<TPessoa>;
    public
       constructor Create;
       destructor Destroy; override;
       class function New : iPessoa;
       function id(aValue : Integer) : iPessoa; overload;
       function id: integer; overload;
       function nome(aValue : string) : iPessoa; overload;
       function nome: string; overload;
       function Build : iCRUD<TPessoa>;
  end;


implementation

{ TPessoaDTO }


{ TPessoaDTO }

function TPessoaDTO.Build: iCRUD<TPessoa>;
begin
  Result := FService;
end;

constructor TPessoaDTO.Create;
begin
  FEntity := TPessoa.Create;
  FService:= TCRUDSimpleORM<TPessoa>.New(FEntity);
end;

destructor TPessoaDTO.Destroy;
begin
  FEntity.Free;
  inherited;
end;

function TPessoaDTO.id: integer;
begin
  Result := FEntity.id;
end;

class function TPessoaDTO.New: iPessoa;
begin
 Result := Self.Create;
end;

function TPessoaDTO.id(aValue: Integer): iPessoa;
begin
  Result := Self;
  FEntity.id := aValue;
end;

function TPessoaDTO.nome(aValue: string): iPessoa;
begin
  Result := Self;
  FEntity.Nome := aValue;
end;

function TPessoaDTO.nome: string;
begin
  Result := FEntity.Nome
end;

end.
