unit View.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, controller.interfaces, controller.controller,
  controller.dto.produto;

type
  TfrmProduto = class(TForm)
    Label1: TLabel;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    Label2: TLabel;
    edtPreco: TEdit;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
    FDataSource : TDataSource;
    function Save : Boolean;
    function Excluir : Boolean;
    procedure CarregarDados;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmProduto.Button1Click(Sender: TObject);
begin
  if Save then
    ShowMessage('Dados gravados com sucesso!');
end;

procedure TfrmProduto.Button2Click(Sender: TObject);
begin
   CarregarDados;
   DBGrid1.DataSource := FDataSource;
end;

procedure TfrmProduto.Button3Click(Sender: TObject);
begin
  if Excluir then
    ShowMessage('Registro excluido com sucesso!');
end;

procedure TfrmProduto.CarregarDados;
begin
  FController.Produto.Build.DataSource(FDataSource).ListarTodos;
end;

function TfrmProduto.Excluir: Boolean;
begin
  Result := False;
  try
    if Application.MessageBox('Deseja realmente excluir?', '',MB_ICONQUESTION+MB_YESNO) = ID_YES then
    begin
      FController
       .Produto
       .Id(FDatasource.DataSet.FieldByName('id').AsInteger)
       .Build
       .Excluir;

       CarregarDados;   //Deveria?
       Result := True;
    end;
  except
    on E : Exception do
      raise Exception.Create('N�o foi poss�vel excluir o registro');
  end;
end;

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FDataSource := TDataSource.Create(self);
end;

procedure TfrmProduto.FormDestroy(Sender: TObject);
begin
  FDataSource := nil;
end;

function TfrmProduto.Save: Boolean;
begin
 Result := False;
 try
  FController
    .Produto
    .Descricao(edtDescricao.Text)
    .Preco(StrToFloat(edtPreco.Text))
    .Build //retorna Instancia do classe CRUDSimpleORM passando o objeto produto generico
    .Inserir; //depois que ja instanciado ele insere na tabela produto
    Result := True;
 except
   on E : Exception do
    raise Exception.Create('N�o foi possivel gravar dados');
 end;
end;

end.
