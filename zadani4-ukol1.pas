program ukol1;
type TypZpusob=function(a,b,c:real):real;

function Objem(a,b,c:real):real;
 begin
  Objem:=(a*b*c);
 end;
 
function Povrch(a,b,c:real):real;
 begin
  Povrch:=(2*( (a*b)+(b*c)+(a*c) ));
 end;
 
function Uhlopricka(a,b,c:real):real;
 begin
  Uhlopricka:= sqrt((a*a)+(b*b)+(c*c));
 end;

procedure ZpracujKvadr(a, b, c: real; Zpusob: TypZpusob);
 begin writeln('Vstupní hodnoty jsou: a =', a:7:2,
               'b =', b:7:2, 'c =', c:7:2);
       writeln('Výsledek zpracování:'); 
       writeln(Zpusob(a, b, c):5:3);
       
 end;

var a,b,c:real;

begin
 read(a);
 read(b);
 read(c);
 ZpracujKvadr(a,b,c,@Povrch);
 ZpracujKvadr(a,b,c,@Objem);
 ZpracujKvadr(a,b,c,@Uhlopricka);
end.