program ukol6;
uses ukol4unit;

var s:string;
    seznam:ukprvek;
    uk:pointer;

function PrvniDelsi(x,y: pointer): shortint;
  begin
    if length(String(x^)) > length(String(y^)) then PrvniDelsi:=1
    else if length(String(x^)) = length(String(y^)) then PrvniDelsi:=0
    else PrvniDelsi:=-1;    
   end;


function PocetPrvku(zacatek:ukprvek):byte;
  var pocet:byte;
  begin
    pocet:=0;
    while zacatek<>nil do begin
      pocet:=pocet+1;
      zacatek:= zacatek^.dalsi;
    end;
    PocetPrvku:=pocet;
  end;

procedure PodleDelky (var seznam:ukprvek);
  var prvky,i:byte;
      mensi,vetsi:pointer;
      pom:ukprvek;
  begin
    prvky:= PocetPrvku(seznam);
    pom:=seznam;
    for i:=1 to prvky-1  do begin
      if PrvniDelsi(pom^.data,pom^.dalsi^.data)=1 then begin
        vetsi:=pom^.data;
        mensi:=pom^.dalsi^.data;
        pom^.data:=mensi;
        pom^.dalsi^.data:=vetsi;
      end;
      pom:=pom^.dalsi;        
    end;
  end;
    
begin
  init(seznam);
  while not eof do begin
    readln(s);
    GetMem(uk, length(s)+1);
    String(uk^):=s;
    pridej(uk,seznam);
  end;
  serad(@PodleDelky, seznam);
  vypis(seznam);
end.
    
