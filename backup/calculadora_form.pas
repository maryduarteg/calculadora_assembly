unit calculadora_form;
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls;

type
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    entry2_txt: TEdit;
    abrepar_bt: TBitBtn;
    graus_rb: TRadioButton;
    inverso_checkb: TCheckBox;
    pi_bt: TBitBtn;
    radiano_rb: TRadioButton;
    sete_bt: TBitBtn;
    nove_bt: TBitBtn;
    ponto_bt: TBitBtn;
    zero_bt: TBitBtn;
    ln_bt: TBitBtn;
    fat_bt: TBitBtn;
    di_bt: TBitBtn;
    log_bt: TBitBtn;
    cos_bt: TBitBtn;
    tan_bt: TBitBtn;
    fechapar_bt: TBitBtn;
    sen_bt: TBitBtn;
    eelex_bt: TBitBtn;
    xeley_bt: TBitBtn;
    raiz2dex_bt: TBitBtn;
    calcular_bt: TBitBtn;
    xquadrado_bt: TBitBtn;
    sinalmenos_bt: TBitBtn;
    sinaldiv_bt: TBitBtn;
    sinalmais_bt: TBitBtn;
    dois_bt: TBitBtn;
    calcoposto_bt: TBitBtn;
    backspace_bt: TBitBtn;
    sinalmulti_bt: TBitBtn;
    cancelaroperacao_bt: TBitBtn;
    um_bt: TBitBtn;
    tres_bt: TBitBtn;
    cinco_bt: TBitBtn;
    quatro_bt: TBitBtn;
    seis_bt: TBitBtn;
    oito_bt: TBitBtn;
    procedure abrepar_btClick(Sender: TObject);
    procedure backspace_btClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure calcoposto_btClick(Sender: TObject);
    procedure calcular_btClick(Sender: TObject);
    procedure cancelaroperacao_btClick(Sender: TObject);
    procedure cinco_btClick(Sender: TObject);
    procedure cos_btClick(Sender: TObject);
    procedure dois_btClick(Sender: TObject);
    procedure eelex_btClick(Sender: TObject);
    procedure fat_btClick(Sender: TObject);
    procedure fechapar_btClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure inverso_checkbChange(Sender: TObject);
    procedure graus_rbChange(Sender: TObject);
    procedure ln_btClick(Sender: TObject);
    procedure log_btClick(Sender: TObject);
    procedure nove_btClick(Sender: TObject);
    procedure oito_btClick(Sender: TObject);
    procedure pi_btClick(Sender: TObject);
    procedure quatro_btClick(Sender: TObject);
    procedure raiz2dex_btClick(Sender: TObject);
    procedure seis_btClick(Sender: TObject);
    procedure sen_btClick(Sender: TObject);
    procedure sete_btClick(Sender: TObject);
    procedure sinaldiv_btClick(Sender: TObject);
    procedure sinalmais_btClick(Sender: TObject);
    procedure sinalmenos_btClick(Sender: TObject);
    procedure sinalmulti_btClick(Sender: TObject);
    procedure tan_btClick(Sender: TObject);
    procedure tres_btClick(Sender: TObject);
    procedure um_btClick(Sender: TObject);
    procedure ponto_btClick(Sender: TObject);
    procedure xeley_btClick(Sender: TObject);
    procedure xquadrado_btClick(Sender: TObject);
    procedure zero_btClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  expressao: string;

implementation

{$R *.lfm}

{ TForm1 }

//estes códigos têm a finalidade de adicionar um texto para a a caixa de entrada
procedure TForm1.um_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '1';
end;

procedure TForm1.dois_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '2';
end;

procedure TForm1.tres_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '3';
end;

procedure TForm1.quatro_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '4';
end;

procedure TForm1.raiz2dex_btClick(Sender: TObject);
begin
   entry2_txt.Text := entry2_txt.Text + 'raiz(';
end;

procedure TForm1.cinco_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '5';
end;

procedure TForm1.seis_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '6';
end;

procedure TForm1.sete_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '7';
end;

procedure TForm1.oito_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '8';
end;

procedure TForm1.nove_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '9';
end;

procedure TForm1.zero_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '0';
end;

procedure TForm1.ponto_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '.';
end;

procedure TForm1.abrepar_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '(';
end;

procedure TForm1.fechapar_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + ')';
end;

procedure TForm1.sinalmais_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '+';
end;

procedure TForm1.sinalmenos_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '-';
end;

procedure TForm1.sinalmulti_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '*';
end;

procedure TForm1.sinaldiv_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '/';
end;

procedure TForm1.cancelaroperacao_btClick(Sender: TObject);
begin
  entry2_txt.Text := '';
end;

procedure TForm1.xquadrado_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '^2';
end;

procedure TForm1.xeley_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '^';
end;

procedure TForm1.eelex_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + 'e^';
end;

procedure TForm1.pi_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + 'p';
end;


procedure TForm1.ln_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + 'n(';
end;

procedure TForm1.log_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + 'l(';
end;

procedure TForm1.fat_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + '!';
end;

procedure TForm1.sen_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + 's(';
end;

procedure TForm1.cos_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + 'c(';
end;

procedure TForm1.tan_btClick(Sender: TObject);
begin
  entry2_txt.Text := entry2_txt.Text + 't(';
end;

procedure TForm1.inverso_checkbChange(Sender: TObject);
begin
end;

procedure TForm1.graus_rbChange(Sender: TObject);
begin
end;

procedure TForm1.FormClick(Sender: TObject);
begin
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
end;

//esta função serve para fazer o "backspace" ou "CE"
procedure TForm1.backspace_btClick(Sender: TObject);
var expressao,aux:String;
i:integer;
begin

       aux:='';
       expressao:=entry2_txt.Text;
       i:=1;
       while i<length(expressao) do
       begin
            aux:=aux+expressao[i];
            i:=i+1;
       end;
       entry2_txt.Text := aux;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Halt(0);
end;



//esta função checa a precedência do operador
function Precedencia(const c: string): Integer;
begin
  if SameText(c, '^') then
    Result := 3
  else if (SameText(c, '*')) or (SameText(c, '/')) then
    Result := 2
  else if (SameText(c, 's')) or (SameText(c, 'c')) or (SameText(c, 't')) or
          (SameText(c, 'l')) or (SameText(c, 'n')) or (SameText(c, 'r')) or
          (SameText(c, '!')) then
    Result := 1
  else if (SameText(c, '+')) or (SameText(c, '-')) then
    Result := 0
  else
    Result := -1; // Valor de prioridade inválido (erro)
end;

//essa função checa se é operador
function Operador(const c: string): Boolean;
begin
  Result := (SameText(c, '+')) or (SameText(c, '-')) or (SameText(c, '*')) or (SameText(c, '/')) or
            (SameText(c, '^')) or (SameText(c, 'l')) or (SameText(c, 'n')) or (SameText(c, 's')) or
            (SameText(c, 'c')) or (SameText(c, 't')) or (Sametext(c, 'r')) or (SameText(c, '!'));
end;


//essa função transforma a notação infixa para pós-fixa por meio de pilha
function TransformarParaNotacaoPosfixa(const expressao: string): string;
const
  MAX_EXPR_LEN = 100;
var
  i, temp: Integer;
  c: Char;
  len: Integer;
  stack: array[0..MAX_EXPR_LEN-1] of Char;
  top: Integer;
  numStr: string;
begin
  Result := '';
  len := Length(expressao);
  top := -1;

  i := 1;
  while i <= len do
  begin
    c := expressao[i];
    if CharInSet(c, [' ', #9, #10, #13]) then
    begin
      Inc(i);
      Continue;
    end;

    if CharInSet(c, ['e', '.', 'p', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) then
    begin
      numStr := '';
      temp := i;
      while (temp <= len) and (expressao[temp] in ['e', 'p', '.', '0'..'9']) do
      begin
        numStr := numStr + expressao[temp];
        Inc(temp);
      end;

      if (temp + 1 <= len) and (expressao[temp] = '(') and (expressao[temp + 1] = 's') then
      begin
        Result := Result + numStr + ' ';
        Result := Result + 's ';
        i := temp + 2;
      end
      else if (temp + 1 <= len) and (expressao[temp] = '(') and (expressao[temp + 1] = 'c') then
      begin
        Result := Result + numStr + ' ';
        Result := Result + 'c ';
        i := temp + 2;
      end
      else if (temp + 1 <= len) and (expressao[temp] = '(') and (expressao[temp + 1] = 't') then
      begin
        Result := Result + numStr + ' ';
        Result := Result + 't ';
        i := temp + 2;
      end
      else if (temp + 1 <= len) and (expressao[temp] = '(') and (expressao[temp + 1] = 'l') then
      begin
        Result := Result + numStr + ' ';
        Result := Result + 'l ';
        i := temp + 2;
      end
      else if (temp + 1 <= len) and (expressao[temp] = '(') and (expressao[temp + 1] = 'n') then
      begin
        Result := Result + numStr + ' ';
        Result := Result + 'n ';
        i := temp + 2;
      end
      else
      begin
        Result := Result + numStr + ' ';
        i := temp;
      end;
    end
    else if Operador(c) then
    begin
      if (c = '-') and (i > 1) and (not CharInSet(expressao[i - 1], ['0'..'9', ')'])) then
      begin
        Result := Result + '0 ';
      end;

      while (top >= 0) and (Precedencia(stack[top]) >= Precedencia(c)) do
      begin
        Result := Result + stack[top] + ' ';
        Dec(top);
      end;

      Inc(top);
      stack[top] := c;
      Inc(i);
    end
    else if c = '(' then
    begin
      Inc(top);
      stack[top] := c;
      Inc(i);
    end
    else if c = ')' then
    begin
      while (top >= 0) and (stack[top] <> '(') do
      begin
        Result := Result + stack[top] + ' ';
        Dec(top);
      end;

      if (top < 0) or (stack[top] <> '(') then
      begin
        Result := 'Erro: parênteses não correspondentes';
        Exit;
      end;

      Dec(top);
      Inc(i);
    end
    else if c = '!' then
    begin
      Result := Result + '! ';
      Inc(i);
    end
    else
    begin
      Result := 'Erro: caractere inválido na expressão';
      Exit;
    end;
  end;

  while top >= 0 do
  begin
    Result := Result + stack[top] + ' ';
    Dec(top);
  end;
end;


//essa função inicia a pilha
procedure iniciarPilha();
begin
  {$ASMMODE intel}
    asm
       finit
    end;
end;

//essa função empilha um número
procedure empilhar(numero: real);
begin
   {$ASMMODE intel}
     asm
       fld numero
     end;
end;

//essa função desempilha um número
function desempilhar():real;
var x:real;
begin
  x:=0.0;
  {$ASMMODE intel}
  asm
     fstp x
  end;
  result := x;
end;

//essa função soma
procedure somar();
var aux:real;
begin
  {$ASMMODE intel}
  asm
     fadd st(1),st
     fstp aux
  end;
end;

//essa função subtrai
procedure subtrair();
begin
  {$ASMMODE intel}
  asm
     fsub
  end;
end;

//essa função multiplica
procedure multiplicar();
begin
  {$ASMMODE intel}
  asm
     fmul
  end;
end;

//essa função divide
procedure dividir();
begin
  {$ASMMODE intel}
  asm
     fdiv
  end;
end;

//essa função calcula o seno
procedure seno();
begin
  {$ASMMODE intel}
  asm
     fsin
  end;
end;

//essa função calcula o cosseno
procedure cosseno();
begin
  {$ASMMODE intel}
  asm
     fcos
  end;
end;

//essa função calcula o fatorial
procedure fatorial(num: real);
var aux, aux2:real;

begin
  aux := trunc(num);
  aux:=aux-1;

  {$ASMMODE intel}
  asm
     mov ebx,0
     fld num
     fld aux

     @loop:
     cmp aux,ebx
     jz @end
     fmul
     fld aux
     fld1
     fsub
     fst aux
     jmp @loop

     @end:
     fstp aux
  end;
end;

//essa função calcula a inversa da tangente
procedure arctan();
begin
  {$ASMMODE intel}
  asm
     fld1
     fpatan
  end;
end;

//essa função a inversa do seno
procedure arcsin();
begin
  {$ASMMODE intel}
  asm
     fld st
    fmul st, st
    fld1
    fsubr
    fsqrt
    fpatan
  end;
end;

//essa função calcula a inversa do cosseno
procedure arccos();
begin
  {$ASMMODE intel}
  asm
    fld st
    fmul st, st
    fld1
    fsubr
    fsqrt
    fxch
    fpatan
  end;
end;

//essa função calcula o logartimo natural
procedure lognatural();
var e, aux: real;
begin
e := 2.71828182845904523536;
aux:=desempilhar();
empilhar(aux);
{$ASMMODE intel}
  asm
    fld1
    fld e
    fyl2x
    fld1
    fdiv st, st(1)
    fld aux
    fyl2x
  end;
end;

//essa função calcula o logartimo
procedure logaritmo();
var d, aux: real;
begin
d := 10;
aux:=desempilhar();
empilhar(aux);
{$ASMMODE intel}
  asm
    fld1
    fld d
    fyl2x
    fld1
    fdiv st, st(1)
    fld aux
    fyl2x
  end;
end;

//essa função calcula a potencia, tratando o expoente negativo ou positivo
procedure potencia();
var base, expoente, aux: real;
  aux2: integer;
begin
expoente:=desempilhar();
base:=desempilhar();
aux:= 0/0;
{$ASMMODE intel}
  asm
    finit
    fld expoente
    fld1
    fld base
    call @compTopo
    ja @positivo
    jz @zero
    fabs
    fld expoente
    fld expoente
    frndint
    fsub st(1), st
    fxch
    call @compTopo
    jnz @end
    fstp aux
    fistp aux2
    test aux2, 1
    jz @positivo
    mov BX, 1
    @positivo:
    fyl2x
    fmul
    fld st
    frndint
    fsub st(1), st
    fxch
    f2xm1
    fld1
    fadd
    fscale
    cmp BX, 1
    jnz @end
    fchs
    jmp @end

    @zero:
    fldz

    @compTopo:
    ftst
    fstsw AX
    SAHF
    ret

    @end:
  end;
end;

//essa função calcula a raiz
procedure raiz();
var aux, dois:real;
begin
dois:=2;
{$ASMMODE intel}
  asm
     fld1
     fld dois
     fdiv
  end;
potencia();
end;

//essa função calcula o oposto
procedure oposto();
begin
    {$ASMMODE intel}
    asm
       fchs
    end;
end;

//calcula o oposto de um número
procedure TForm1.calcoposto_btClick(Sender: TObject);
var expressao:string;
  number:real;
begin
   expressao:=entry2_txt.text;
   number:=strtofloat(expressao);
   empilhar(number);
   oposto();
   number:=desempilhar();
   entry2_txt.Text:=floattostr(number);
end;


{quando clica em "=" n tela, o evento "onClick" é chamado. Aqui ele recebe a
expressao da entrada, transforma para a notação pós-fixa. Assim, enquanto
ele lê a expressão resultada concatena os números, caso tenha mais que uma casa
- unidade, dezena, centena - separando pelo " " - esoaço vazio que há na notação
pós-fixa - e empilha imediantamente, passa para o próximo número e o empilha.
Este código faz as operações quando acha um operado na expressão pós-fixa.}

procedure TForm1.calcular_btClick(Sender: TObject);
var
  expressao, resultado, numero, exibir: string;
  c: char;
  j, tamanho: integer;
  resultadofinal, numpilha, numaux, numaux2, noventa: real;
begin
  j := 1;
  noventa:=90;

  expressao := entry2_txt.Text;
  resultado := TransformarParaNotacaoPosfixa(expressao);
  tamanho := Length(resultado);

  iniciarpilha();

  while j <= tamanho do
  begin
    if resultado[j] in ['e', '.', ',', 'p', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] then
  begin
    numero := resultado[j];
    while (j + 1 <= tamanho) and (resultado[j + 1] in ['e', '.', ',', 'p', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) do
    begin
      j := j + 1;
      if resultado[j] in ['.', ','] then     //tratar números de ponto flutuante
        numero := numero + DecimalSeparator // Usa o separador decimal configurado no sistema
      else
        numero := numero + resultado[j];
    end;

    if numero = 'p' then  //tratar pi ou euler
    begin
      empilhar(3.14159265358979323846);
    end
    else if numero = 'e' then
    begin
      empilhar(2.718281828459045235360287);
    end
    else
    begin
      numpilha := StrToFloat(numero);
      empilhar(numpilha);
    end;

    numero := '';  //aqui limpa a variável número para que ela possa ser reutilizada
                   //em novas concatenações de outros números
  end

    else if Operador(resultado[j]) then   //neste trecho verifica qual é o operador e chama as funções
    begin
      c := resultado[j];
      if SameText(c, '+') then
      begin
        somar();
      end
      else if SameText(c, '-') then
      begin
        subtrair();
      end
      else if SameText(c, '*') then
      begin
        multiplicar();
      end
      else if SameText(c, '/') then
      begin
        dividir();
      end
      else if SameText(c, 'l') then
      begin
        logaritmo();
      end
      else if SameText(c, 'n') then
      begin
        lognatural();
      end
      else if SameText(c, 's') then
      begin
        if inverso_checkb.Checked = false then
        begin
            if graus_rb.Checked = true then
            begin
              numaux := desempilhar();
              numaux := numaux*(3.14159265358979323846/180);
              empilhar(numaux);
              seno();
            end
          else
          begin
              seno();
          end;
        end
      else
      begin
        if graus_rb.Checked = true then
            begin
              arcsin();
              numaux := desempilhar();
              numaux := numaux*180/3.14159265358979323846;
              empilhar(numaux);
            end
          else
          begin
              arcsin();
          end;
      end;
      end
      else if SameText(c, 'c') then
      begin
       if inverso_checkb.Checked = false then
        begin
            if graus_rb.Checked = true then
            begin
              numaux := desempilhar();
              numaux := numaux*(3.14159265358979323846/180);
              empilhar(numaux);
              cosseno();
            end
          else
          begin
              cosseno();
          end;
        end
      else
      begin
        if graus_rb.Checked = true then
            begin
              arccos();
              numaux := desempilhar();
              numaux := numaux*180/3.14159265358979323846;
              empilhar(numaux);
            end
          else
          begin
              arccos();
          end;
      end;
      end

    else if SameText(c, 't') then
    begin
      if inverso_checkb.Checked = false then
      begin
      if graus_rb.Checked = true then
      begin
        numaux := desempilhar();
        if numaux = noventa then  //checa se é noventa, pois a tangente de 90 é indefinida
        begin
          entry2_txt.Text := 'Erro';
          exit;
        end
        else
        begin
          numaux := numaux * (3.14159265358979323846 / 180);
          numaux2 := numaux;
          empilhar(numaux);
          seno();
          empilhar(numaux2);
          cosseno();
          dividir();
        end;
    end
    else
    begin
        numaux := desempilhar();
        numaux2 := numaux;
        empilhar(numaux);
        seno();
        empilhar(numaux2);
        cosseno();
        dividir();
      end;
      end
      else
      begin
        if graus_rb.Checked = true then
        begin
          arctan();
          numaux := desempilhar();
          numaux := numaux * 180 / 3.14159265358979323846;
          empilhar(numaux);
        end
        else
        begin
          arctan();
      end;
    end;
      end

    else if SameText(c,'^') then
        begin
              potencia();
        end

      else if SameText(c, 'r') then
        begin
          raiz();
        end

        else if SameText(c, '!') then
        begin
          numaux:=desempilhar();
          fatorial(numaux);
        end

      end;

    j := j + 1;
  end;

  resultadofinal := desempilhar();   //desempilha o resultado que ao final estará no topo da pilha
  exibir := FloatToStr(resultadofinal); //tranforma para string
  exibir := StringReplace(exibir, ',', '.', [rfReplaceAll]);  //substitui vírgula por ponto
  entry2_txt.text := exibir;   //envia para a interface

end;

end.
