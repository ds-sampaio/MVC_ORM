unit View.Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Model.Interfaces,
  controller.controller, controller.interfaces, Vcl.ExtCtrls;

type
  TfrmConfiguracao = class(TForm)
    Label1: TLabel;
    edtTipo: TEdit;
    Label2: TLabel;
    edtPath: TEdit;
    edtUserName: TEdit;
    Label3: TLabel;
    edtPassword: TEdit;
    Label4: TLabel;
    edtPorta: TEdit;
    Label5: TLabel;
    edtSchema: TEdit;
    Label6: TLabel;
    edtLocking: TEdit;
    Label7: TLabel;
    edtServidor: TEdit;
    Label8: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
    procedure CarregarDados;
    procedure SalvarDados;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfrmConfiguracao.Button2Click(Sender: TObject);
begin
  SalvarDados;
end;

procedure TfrmConfiguracao.CarregarDados;
begin
  edtTipo.Text     := FController.Configuracao.DriverID;
  edtPath.Text     := FController.Configuracao.DataBase;
  edtUserName.Text := FController.Configuracao.UserName;
  edtPassword.Text := FController.Configuracao.Password;
  edtPorta.Text    := FController.Configuracao.Port;
  edtSchema.Text   := FController.Configuracao.Schema;
  edtServidor.Text := FController.Configuracao.Server;
  edtLocking.Text  := FController.Configuracao.Locking;
end;

procedure TfrmConfiguracao.FormCreate(Sender: TObject);
begin
  FController := TController.New;
end;

procedure TfrmConfiguracao.FormShow(Sender: TObject);
begin
   CarregarDados;
end;

procedure TfrmConfiguracao.SalvarDados;
begin
  try
    FController
      .Configuracao
      .DriverID(edtTipo.Text)
      .DataBase(edtPath.Text)
      .UserName(edtUserName.Text)
      .Password(edtPassword.Text)
      .Port(edtPorta.Text)
      .Server(edtServidor.Text)
      .Schema(edtSchema.Text)
      .Locking(edtLocking.Text);
  except
    raise Exception.Create('Erro ao salvar dados');
  end;
end;

end.
