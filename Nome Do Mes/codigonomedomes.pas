unit CodigoNomeDoMes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    numero: TEdit;
    Label1: TLabel;
    nome: TLabel;
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
  numero_do_mes : Integer;
begin
  numero_do_mes := StrToInt(numero.Text);
  if(numero_do_mes = 1) then
  begin
    nome.Caption := 'Janeiro';
  end
  else if(numero_do_mes = 2) then
  begin
    nome.Caption := 'Fevereiro';
  end
  else if(numero_do_mes = 3) then
  begin
    nome.Caption := 'Março';
  end
  else if(numero_do_mes = 4) then
  begin
    nome.Caption := 'Abril';
  end
  else if(numero_do_mes = 5) then
  begin
    nome.Caption := 'Maio';
  end
  else if(numero_do_mes = 6) then
  begin
    nome.Caption := 'Junho';
  end
  else if(numero_do_mes = 7) then
  begin
     nome.Caption := 'Julho';
  end
  else if(numero_do_mes = 8) then
  begin
     nome.Caption := 'Agosto';
  end
  else if(numero_do_mes = 9) then
  begin
     nome.Caption := 'Setembro';
  end
  else if(numero_do_mes = 10) then
  begin
     nome.Caption := 'Outubro';
  end
  else if(numero_do_mes = 11) then
  begin
     nome.Caption := 'Novembro';
  end
  else if(numero_do_mes = 12) then
  begin
     nome.Caption := 'Dezembro';
  end
end;

end.

