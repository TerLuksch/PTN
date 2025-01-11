program ukol2;

type TypMax = function (X,Y: pointer): shortint;
     TKomplexni = record
       Re: real;
       Im: real;
      end;
         
function VetsiLongint(x,y: pointer):shortint;
  begin
    if Longint(x^)>Longint(y^) then VetsiLongint:=1
      else if Longint(x^) = Longint(y^) then VetsiLongint:=0
        else VetsiLongint:= -1;
  end;
  
function VetsiKomplex(x,y:pointer):shortint;
  var pomx,pomy:real;
  begin
    //x^:= TKomplexni(x^);
    //y^:= TKomplexni(y^);
    pomx:= sqrt( (TKomplexni(x^).Re * TKomplexni(x^).Re)+(TKomplexni(x^).Im * TKomplexni(x^).Im) );
    pomy:= sqrt( (TKomplexni(y^).Re * TKomplexni(y^).Re)+(TKomplexni(y^).Im * TKomplexni(y^).Im) );
    if abs(pomx)>abs(pomy) then VetsiKomplex:=1
      else if abs(pomx)=abs(pomy) then VetsiKomplex:=0
        else VetsiKomplex:= -1;
  end;
  
var a,b,c,d:pointer;
    kom,plex:TKomplexni;  
  
begin
  GetMem(a,4);
  GetMem(b,4);
  Longint(a^):=1;
  Longint(b^):=2;
  writeln(VetsiLongint(a,b));
  FreeMem(a,4);
  FreeMem(b,4);
  
  kom.re:=1;
  kom.im:=5;
  plex.re:=4;
  plex.im:=-1;
  GetMem(c,sizeof(kom));
  GetMem(d,sizeof(plex));
  TKomplexni(c^):=kom;
  TKomplexni(d^):=plex;
  writeln(VetsiKomplex(c,d));
end.
