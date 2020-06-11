unit ConcaternarnomeCodigo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    nome_sobre_nome: TLabel;
    sobre_nome: TEdit;
    nome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  n, sn: string;
begin
  n := nome.text;
  sn := sobre_nome.text;
  nome_sobre_nome.Caption := n + ' ' + sn;
end;

end.

