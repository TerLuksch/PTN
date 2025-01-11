program ukol9a;

var x,i:byte;
    vysl: string;

begin
  read(x);
  vysl:='';
  for i:=1 to 8 do begin
    if odd(x) then vysl:= '1' + vysl else vysl:= '0' + vysl;
    x:= x shr 1;
  end;
  writeln(vysl);
  // pokud bychom potrebovali cislo a ne retezec muzeme pouzit strtoint
end.