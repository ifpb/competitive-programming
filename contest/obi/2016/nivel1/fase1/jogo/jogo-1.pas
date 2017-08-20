program jogo;

var
   p: integer;
   d1: integer;
   d2: integer;
   result: integer;
begin
   readln(p);
   readln(d1);
   readln(d2);

   if ((d1 + d2) mod 2 = p) then
      result := 0
   else
      result := 1;

   writeln(result);
end.
