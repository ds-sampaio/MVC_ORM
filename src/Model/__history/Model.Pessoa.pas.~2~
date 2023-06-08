unit Model.Pessoa;

interface

uses
  SimpleAttributes;

//entidade de mapeamento
type
  [Tabela('PESSOA')]
  TPessoa = class
    private
    Fid: integer;
    FNome: String;
    public
      [Campo('ID'), Pk, AutoInc]
      property id: integer read Fid write Fid;
      [Campo('NOME')]
      property Nome: String read FNome write FNome;


  end;

implementation

end.
