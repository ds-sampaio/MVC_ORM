unit Model.Pedido;

interface

uses
  SimpleAttributes;

type
  [Tabela('PEDIDO')]
  TPedido = class
    private
    Fid: integer;
    FDesconto: double;
    FTotal: double;
    public
      [Campo('ID'), Pk, AutoInc]
      property id: integer read Fid write Fid;
      [Campo('DESCONTO'), Format('#.##0,00')]
      property Desconto: double read FDesconto write FDesconto;
      [Campo('TOTAL'), Format('#.##0,00')]
      property total: double read Ftotal write Ftotal;
  end;

implementation

end.

