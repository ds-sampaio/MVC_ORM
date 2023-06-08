unit controller.controller;

interface

uses
  controller.interfaces, controller.dto.interfaces, Model.Interfaces,
  controller.dto.cliente, Model.Configuracao, controller.dto.pessoa,
  controller.dto.produto, controller.dto.endereco, controller.dto.itenspedido,
  controller.dto.pedido;

type
  TController = class(TInterfacedObject, iController)
    private
      FCliente      : iCliente;
      FPessoa       : iPessoa;
      FConfiguracao : iConfiguracao;
      FProduto      : iProduto;
      FEndereco     : iEndereco;
      FPedido       : iPedido;
      FItensPedido  : iItensPedido;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Cliente : iCliente;
      function Pessoa : iPessoa;
      function Configuracao : iConfiguracao;
      function Produto : iProduto;
      function Endereco : iEndereco;
      function Pedido : iPedido;
      function ItensPedido : iItensPedido;
  end;

implementation

{ TController }

function TController.Cliente: iCliente;
begin
  if not Assigned(FCliente) then
     FCliente := TClienteDTO.New;
  Result := FCliente;
end;

function TController.Configuracao: iConfiguracao;
begin
  if not Assigned(FConfiguracao) then
    FConfiguracao := TConfiguracao.New;
  Result := FConfiguracao;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Endereco: iEndereco;
begin
  if not Assigned(FEndereco) then
    FEndereco := TEnderecoDTO.New;
  Result := FEndereco;
end;

function TController.ItensPedido: iItensPedido;
begin
  if not Assigned(FItensPedido) then
    FItensPedido := TItensPedidoDTO.New;
  Result := FItensPedido;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.Pedido: iPedido;
begin
  if not Assigned(FPedido) then
    FPedido := TPedidoDTO.New;
  Result := FPedido;
end;

function TController.Pessoa: iPessoa;
begin
  if not Assigned(FPessoa) then
    FPessoa := TPessoaDTO.New;
  Result := FPessoa;
end;

function TController.Produto: iProduto;
begin
   if not Assigned(FProduto) then
    FProduto := TProdutoDTO.New;
  Result := FProduto;
end;

end.
