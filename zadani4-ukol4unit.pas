unit ukol4unit;

interface
type ukprvek= ^prvek;
     prvek= record
       data:pointer;
       dalsi: ukprvek;
      end;
     funkcerazeni = procedure (var seznam: ukprvek);

procedure init(var s:ukprvek);
procedure pridej(x:pointer; var seznam:ukprvek);
procedure serad(f:funkcerazeni; var s:ukprvek);
procedure vypis(seznam:ukprvek);

implementation

procedure init(var s:ukprvek);
begin
 s:=nil;
end;

procedure pridej(x:pointer; var seznam:ukprvek);
var pom,sez:ukprvek;
begin
  new(pom);
  pom^.data:=x;
  pom^.dalsi:=nil;
  if seznam=nil then seznam:=pom
  else begin
   sez:=seznam;
   while sez<>nil do sez:=sez^.dalsi;
   sez:=pom;
  end;  
end;

procedure serad(f:funkcerazeni; var s:ukprvek);
begin
 f(s);
end;

procedure vypis(seznam:ukprvek);
begin
 while seznam<>nil do begin
  writeln(String(seznam^.data^));
  seznam:=seznam^.dalsi;
 end; 
end;
 
begin
end.