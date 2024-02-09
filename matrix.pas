program fallingcode(output);

var
   a,x,y,z,b : integer;

{a procedure to generate random x and y co-ordinates}
procedure rand;
             begin
               x := Random(60)+1;
               y := Random(20)+1;
          end;

procedure rand1;
          begin
               b :=random(2)+1;
          end;
{procedure to generate visible characters to be displayed}
procedure ones;
          begin
          rand;
          for a :=1 to 9 do
              begin
                   rand1;
                   {this randomly determines whether a 1 or 0 is displayed}
                   gotoXY(x,y+a);
                   if b = 1 then
                   write('1');
                   if b<> 1 then
                   write('0');
          end;
          end;
{this removes characters from the screen by printing spaces}
procedure zeros;
          begin
               rand;
               for a := 1 to 10 do
                   begin
                        gotoXY(x,y+a);
                        write(' ');
                   end;
          end;
     
{this is the actual display generation part}
begin
     clrscr;
     for z:= 1 to 600 do
         begin
              ones;
              zeros;
         end;

end.



