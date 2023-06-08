unit Dao.resource.factory;

interface

uses
  Model.Interfaces,
  Dao.ConexaoFiredac,
  Model.Configuracao;

type
  TResource = class(TInterfacedObject, iResource)
    private
      FConexao      : iConexao;
      FConfiguracao : iConfiguracao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iResource;
      function Conexao : iConexao;
      function Configuracao : iConfiguracao;
  end;

implementation

{ TResource }

function TResource.Conexao: iConexao;
begin
  Result := FConexao;
end;

function TResource.Configuracao: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TResource.Create;
begin
  FConfiguracao := TConfiguracao.New;
  FConexao      := TConexao.New(FConfiguracao);
end;

destructor TResource.Destroy;
begin

  inherited;
end;

class function TResource.New: iResource;
begin
  Result := Self.Create;
end;

end.
