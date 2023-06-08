unit controller.dto.interfaces;

interface

uses
  Dao.Interfaces.CRUD,
  Model.Cliente,
  Model.Pessoa,
  Model.Produto, Model.Endereco, Model.Pedido, Model.ItensPedido;

type
 iCliente = interface
   function id(aValue : Integer) : iCliente; overload;
   function id: integer; overload;
   function idPessoa(aValue : Integer) : iCliente; overload;
   function idPessoa: integer; overload;
   function tipo(aValue : string) : iCliente; overload;
   function tipo: string; overload;
   function cpfCnpj(aValue : string) : iCliente; overload;
   function cpfCnpj: string; overload;
   function Build : iCRUD<TCliente>;
 end;

 iPessoa = interface
    function id(aValue : Integer) : iPessoa; overload;
    function id: integer; overload;
    function nome(aValue : string) : iPessoa; overload;
    function nome: string; overload;
    function Build : iCRUD<TPessoa>;
 end;

 iEndereco = interface
    function id(aValue : Integer) : iEndereco; overload;
    function id: integer; overload;
    function idPessoa(aValue : Integer) : iEndereco; overload;
    function idPessoa: integer; overload;
    function logradouro(aValue : string) : iEndereco; overload;
    function logradouro: string; overload;
    function bairro(aValue : string) : iEndereco; overload;
    function bairro: string; overload;
    function numero(aValue : string) : iEndereco; overload;
    function numero: string; overload;
    function cep(aValue : string) : iEndereco; overload;
    function cep: string; overload;
    function Build : iCRUD<TEndereco>;
 end;

 iProduto = interface
    function id(aValue : Integer) : iProduto; overload;
    function id: integer; overload;
    function descricao(aValue : string) : iProduto; overload;
    function descricao: string; overload;
    function preco(aValue : double) : iProduto; overload;
    function preco: double; overload;
    function Build : iCRUD<TProduto>;
 end;

 iPedido = interface
    function id(aValue : Integer) : iPedido; overload;
    function id: integer; overload;
    function desconto(aValue : double) : iPedido; overload;
    function desconto: double; overload;
    function total(aValue : double) : iPedido; overload;
    function total: double; overload;
    function idCliente(aValue : Integer) : iPedido; overload;
    function idCliente: integer; overload;
    function Build : iCRUD<TPedido>;
 end;

 iItensPedido = interface
    function id(aValue : Integer) : iItensPedido; overload;
    function id: integer; overload;
    function valor(aValue : double) : iItensPedido; overload;
    function valor: double; overload;
    function quantidade(aValue : Integer) : iItensPedido; overload;
    function quantidade: integer; overload;
    function idpedido(aValue : Integer) : iItensPedido; overload;
    function idpedido: integer; overload;
    function iditem(aValue : Integer) : iItensPedido; overload;
    function iditem: integer; overload;
    function Build : iCRUD<TItensPedidos>;
 end;


implementation

end.
