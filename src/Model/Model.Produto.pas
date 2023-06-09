unit Model.Produto;

interface

uses
  SimpleAttributes, System.SysUtils;

type
  [Tabela('PRODUTO')]
  TProduto = class
    private
    Fid: integer;
    Fdescricao: string;
    Fpreco: double;
    public
      [Campo('ID'), Pk, AutoInc]
      property id: integer read Fid write Fid;
      [Campo('DESCRICAO')]
      property descricao: string read Fdescricao write Fdescricao;
      [Campo('PRECO'), Format('#.##0,00')]
      property preco: double read Fpreco write Fpreco;
      procedure ValidaCampos;
  end;

implementation

{ TProduto }


procedure TProduto.ValidaCampos;
begin
  if Fdescricao = EmptyStr then
     raise Exception.Create('Descri��o n�o poder ficar em branco');

  if Fpreco = 0 then
     raise Exception.Create('Pre�o n�o poder ficar em branco');

end;

end.
