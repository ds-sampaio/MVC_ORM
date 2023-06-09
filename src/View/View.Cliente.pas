unit View.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, controller.interfaces, controller.controller,
  FireDAC.Comp.Client;

type
  TfrmCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtTipo: TEdit;
    Label2: TLabel;
    edtCpfCnpj: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    edtLogradouro: TEdit;
    Label5: TLabel;
    edtBairro: TEdit;
    edtCep: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtNumero: TEdit;
    btnAdicionar: TButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
    FMemTable   : TFDMemTable;
    function Save: Boolean;
    procedure setMemTable;
    function AddEndereco: Boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

function TfrmCliente.AddEndereco: Boolean;
begin
  Result := False;
  try
    FMemTable.Append();
    FMemTable.FieldByName('logradouro').AsString := edtLogradouro.Text;
    FMemTable.FieldByName('bairro').AsString := edtBairro.Text;
    FMemTable.FieldByName('cep').AsString := edtCep.Text;
    FMemTable.FieldByName('numero').AsString := edtNumero.Text;
    FMemTable.Post();
    Result := True;
  except
    on E : Exception do
      raise Exception.Create('Erro ao add endere�o');
  end;
  
end;

procedure TfrmCliente.btnAdicionarClick(Sender: TObject);
begin
  if not AddEndereco then
     exit;
end;

procedure TfrmCliente.Button1Click(Sender: TObject);
begin
  if Save then
    ShowMessage('Cliente cadastrado com sucesso!');
end;

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FMemTable   := TFDMemTable.Create(nil);
  setMemTable;
end;

procedure TfrmCliente.FormDestroy(Sender: TObject);
begin
  FMemTable.Free;
end;

function TfrmCliente.Save: Boolean;
var
  LId : Integer;
begin
 Result := False;
 try
   LId := FController.Pessoa
             .Nome(edtNome.Text)
             .Build
             .Inserir
             .This //this retorna a propria instancia
             .Id;

   FController.Cliente
     .IdPessoa(lId)
     .CpfCnpj(edtCpfCnpj.Text)
     .Tipo(edtTipo.Text)
     .Build
     .Inserir;

  FMemTable.First;
  if FMemTable.RecordCount > 0 then
  begin
    while not FMemTable.Eof  do
    begin
      FController.Endereco
        .idPessoa(LId)
        .Logradouro(edtLogradouro.Text)
        .bairro(edtBairro.Text)
        .cep(edtCep.Text)
        .numero(edtNumero.Text)
        .Build
        .Inserir;

      FMemTable.Next;
    end;
    Result := True;
  end;
 except
   on E : Exception do
   begin
     raise Exception.Create('Erro ao gravar os dacos' + E.Message);
   end;
 end;
end;

procedure TfrmCliente.setMemTable;
begin
  FMemTable := TFDMemTable.Create(nil);

  FMemTable.FieldDefs.Clear();
  FMemTable.FieldDefs.Add('logradouro', ftString, 100);
  FMemTable.FieldDefs.Add('bairro', ftString, 100);
  FMemTable.FieldDefs.Add('cep', ftString, 8);
  FMemTable.FieldDefs.Add('numero', ftString, 10);

  FMemTable.CreateDataSet();
  FMemTable.Open();
end;

end.
