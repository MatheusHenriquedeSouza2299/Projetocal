unit Ucal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSoma: TButton;
    btnSubtracao: TButton;
    btnDivisao: TButton;
    btnMultiplicacao: TButton;
    edtResultado: TEdit;
    edtValor1: TEdit;
    edtValor2: TEdit;
    lbValor1: TLabel;
    lbValor2: TLabel;
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
  private
     Valor1, Valor2, resultado: integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSomaClick(Sender: TObject);
begin
            Valor1 := StrToInt(edtValor1.text);
            Valor2 := StrToInt(edtValor2.text);
            resultado := valor1 + valor2;

            edtResultado.text:= IntToStr(resultado);
end;

procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
  Valor1 := StrToInt(edtValor1.text);
            Valor2 := StrToInt(edtValor2.text);
            resultado := valor1 DIV valor2;

            edtResultado.text:= IntToStr(resultado);
end;

procedure TForm1.btnMultiplicacaoClick(Sender: TObject);
begin
  Valor1 := StrToInt(edtValor1.text);
            Valor2 := StrToInt(edtValor2.text);
            resultado := valor1 * valor2;

            edtResultado.text:= IntToStr(resultado);
end;

procedure TForm1.btnSubtracaoClick(Sender: TObject);
begin
  Valor1 := StrToInt(edtValor1.text);
            Valor2 := StrToInt(edtValor2.text);
            resultado := valor1 - valor2;

            edtResultado.text:= IntToStr(resultado);
end;

end.

