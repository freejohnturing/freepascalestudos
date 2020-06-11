unit CodigoCalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    resultado: TLabel;
    soma: TRadioButton;
    subtracao: TRadioButton;
    Multiplicacao: TRadioButton;
    Divicao: TRadioButton;
    RadioGroup1: TRadioGroup;
    valor1: TEdit;
    valor2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  n1,n2: real;
begin
  n1 := StrToFloat(valor1.text);
  n2 := StrToFloat(valor2.text);
  if (soma.Checked) then
  begin
    resultado.Caption := FloatToStr(n1 + n2);
  end
  else
  if (subtracao.Checked) then
  begin
    resultado.Caption := FloatToStr(n1 - n2);
  end
  else
  if (multiplicacao.Checked) then
  begin
     resultado.Caption := FloatToStr(n1 * n2);
  end
  else
  if (divicao.Checked) then
  begin
     if (n2 = 0) then
     begin
        ShowMessage('Não existe divisão por zero');
     end
     else
     begin
       resultado.Caption := FloatToStr(n1 / n2);
     end;
  end;

  valor1.SetFocus;
end;

end.

