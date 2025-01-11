program ukol4;

var x,y:shortint;
    i,jednicky:byte;

begin
  read(x);
  y:=x;
  jednicky:=0;
  for i:=1 to 8 do begin
    if odd(y) then inc(jednicky);
    y:=y shr 1;
  end;
  if odd(jednicky) then writeln(x)
    else begin 
      if y=1 then writeln(x-%1000000)
        else writeln(x+%10000000)
    end; 
end.