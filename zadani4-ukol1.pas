program ukol1;

var jednicky: byte;
    x:integer;
    
begin
  jednicky:=0;
  read(x);
  while x>0 do begin
    if odd(x) then inc(jednicky);
    x:= x shr 1;    
  end;
  writeln('Pocet binarnich jednicek je:',jednicky);
end.
