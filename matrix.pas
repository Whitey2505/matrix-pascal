Program fallingcode(output);

var
   a,x,y,z,b : integer;

procedure rand;
             begin
               x := Random(60)+1;
               y := Random(20)+1;
          end;

procedure rand1;
          begin
               b :=random(2)+1;
          end;

procedure ones;
          begin
          rand;
          for a :=1 to 9 do
              begin
                   rand1;
                   gotoXY(x,y+a);
                   if b = 1 then
                   write('1');
                   if b<> 1 then
                   write('0');
          end;
          end;

procedure zeros;
          begin
               rand;
               for a := 1 to 10 do
                   begin
                        gotoXY(x,y+a);
                        write(' ');
                   end;
          end;
begin
     clrscr;
     for z:= 1 to 600 do
         begin
              ones;
              zeros;
         end;

end.
