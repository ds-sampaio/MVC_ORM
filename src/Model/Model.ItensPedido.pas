unit Model.ItensPedido;

interface

uses
  SimpleAttributes;

type

  [Tabela('ITENS_PEDIDOS')]
  TItensPedidos = class
    private
    Fid: integer;
    FidItem: integer;
    Fvalor: double;
    Fquantidade: integer;
    FidPedido: integer;
    public
      [Campo('ID'), Pk,AutoInc]
      property id: integer read Fid write Fid;
      [Campo('IDITEM')]
      property idItem: integer read FidItem write FidItem;
      [Campo('VALOR'), Format('#.##0,00')]
      property valor: double read Fvalor write Fvalor;
      [Campo('QUANTIDADE')]
      property quantidade: integer read Fquantidade write Fquantidade;
      [Campo('IDPEDIDO')]
      property idPedido: integer read FidPedido write FidPedido;
  end;

{id
item
valor
quantidade
idpedido}

implementation

end.
