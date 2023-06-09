unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  View.Configuracao, View.Produto, View.Cliente, Data.DB, Vcl.Grids, Vcl.DBGrids,
  controller.interfaces, controller.controller, FireDAC.Comp.Client,
  Utils.FormatCustom;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edtCodCliente: TEdit;
    Label3: TLabel;
    edtCodProduto: TEdit;
    Label2: TLabel;
    edtNomeCliente: TEdit;
    Label4: TLabel;
    edtQuantidade: TEdit;
    Label5: TLabel;
    edtValorUnitario: TEdit;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Button4: TButton;
    Panel5: TPanel;
    Button5: TButton;
    Panel6: TPanel;
    Button6: TButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Label6: TLabel;
    edtTotal: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCodClienteChange(Sender: TObject);
    procedure edtCodProdutoChange(Sender: TObject);
    procedure edtQuantidadeChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
    FMemTable   : TFDMemTable;
    FDataSource : TDataSource;
    FDtsItens   : TDataSource;
    procedure setMemTable;
    function AddItem: Boolean;
  public
    { Public declarations }
    function CalcularTotal(aValor : Double; aQtd : Integer) : Double;
    procedure SavePedido;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 LConfiguracao : TfrmConfiguracao;
begin
  LConfiguracao := TfrmConfiguracao.Create(nil);
  try
    LConfiguracao.ShowModal;
  finally
    LConfiguracao.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  LProduto : TfrmProduto;
begin
  LProduto := TfrmProduto.Create(nil);
  try
    LProduto.ShowModal;
  finally
    LProduto.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  LCliente : TfrmCliente;
begin
  LCliente := TfrmCliente.Create(nil);
  try
    LCliente.ShowModal;
  finally
    LCliente.Free;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  AddItem;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  SavePedido;
end;

function TForm1.CalcularTotal(aValor: Double; aQtd: Integer): Double;
begin
  Result := (aValor * aQtd);
end;

procedure TForm1.edtCodClienteChange(Sender: TObject);
var
  LId : Integer;
begin
  if TryStrToInt(edtCodCliente.Text, lId) then
     edtNomeCliente.Text := FController.
                               Pessoa
                               .Build
                               .ListarPorId(FController.Cliente.Build.ListarPorId(lId).This.idPessoa)
                               .This.Nome;
end;

procedure TForm1.edtCodProdutoChange(Sender: TObject);
var
  LId : Integer;
begin
  if TryStrToInt(edtCodProduto.Text, lId) then
     FController.Produto.Build.DataSource(FDataSource).ListarPorId(lId);

  if not FDataSource.DataSet.IsEmpty then
  begin
    edtValorUnitario.Text := TFormatCustom.FormatFloatCustom(FDataSource.DataSet.FieldByName('preco').AsFloat);
             //FormatFloat('#.##0,00',FDataSource.DataSet.FieldByName('preco').AsFloat);
    Exit;
  end;
  ShowMessage('Não foi possível encontrar código do produto');
end;

procedure TForm1.edtQuantidadeChange(Sender: TObject);
var
 LQtd : Integer;
begin
 if TryStrToInt(edtQuantidade.Text, LQtd) then


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FDataSource := TDataSource.Create(self);
  FDtsItens   := TDataSource.Create(self);
  setMemTable;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FDataSource := nil;
  FDtsItens.Free;
  FMemTable.Free;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm1.SavePedido;
var
 lId       : Integer;
begin
  try
    lId := FController.Pedido.IdCliente(StrToInt(edtCodCliente.Text))
                    .Build.Inserir.This.Id;

    FMemTable.First;
    while not FMemTable.Eof do
    begin
     FController.ItensPedido
       .idPedido(lId)
       .idItem(FMemTable.FieldByName('id_item').AsInteger)
       .quantidade(FMemTable.FieldByName('quantidade').AsInteger)
       .valor(FMemTable.FieldByName('valor').AsFloat)
       .Build.Inserir;

       FMemTable.Next;
    end;
    ShowMessage('Pedido gravado com sucesso!');
  except
    raise Exception.Create('Não foi possível realizar pedido');
  end;

end;

procedure TForm1.setMemTable;
begin
  FMemTable := TFDMemTable.Create(nil);

  FMemTable.FieldDefs.Clear();
  FMemTable.FieldDefs.Add('codigo', ftInteger);
  FMemTable.FieldDefs.Add('descricao', ftString, 100);
  FMemTable.FieldDefs.Add('quantidade', ftInteger);
  FMemTable.FieldDefs.Add('valor_unitario', ftFloat);
  FMemTable.FieldDefs.Add('valor_total', ftFloat);

  FMemTable.CreateDataSet();
  FMemTable.Open();
  FDtsItens.DataSet := FMemTable;
  DBGrid1.DataSource := FDtsItens;

end;

function TForm1.AddItem: Boolean;
var
  LQtd : Integer;
  LValor : Double;
  LVal   : Currency;
begin
  Result := False;
  try
    if not TryStrToInt(edtQuantidade.Text,lQtd) then
       lQtd := 1;

    if TryStrToFloat(edtValorUnitario.Text, LValor) then
       LValor := 0;

    LVal := TFormatCustom.StrToCurrency(edtTotal.Text);

    FMemTable.Append();
    FMemTable.FieldByName('codigo').AsString := edtCodProduto.Text;
    FMemTable.FieldByName('descricao').AsString := FDataSource.DataSet.FieldByName('descricao').AsString;
    FMemTable.FieldByName('quantidade').AsInteger := lQtd;
    FMemTable.FieldByName('valor_unitario').AsCurrency := TFormatCustom.StrToCurrency(edtValorUnitario.Text);
    FMemTable.FieldByName('valor_total').AsFloat := CalcularTotal(FMemTable.FieldByName('valor_unitario').AsFloat,LQtd);
    FMemTable.Post();
    LVal := LVal + FMemTable.FieldByName('valor_total').AsFloat;
    edtTotal.Text := FormatFloat('#,##0.00',LVal);
    Result := True;
  except
    on E : Exception do
      raise Exception.Create('Erro ao add item');
  end;

end;

end.
