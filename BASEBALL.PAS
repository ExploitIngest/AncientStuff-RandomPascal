{Jason Mills
 Date: 2-26-96
 Description:  This program will compute the batting averages of the players
               and will print a table showing each player's name, number,
               batting average and number of walks.}

Program Baseball;
   uses crt;

   Function Mean(var hits,outs: integer): real;
      Begin
         mean:= (hits)/(hits + outs);
      end;

   Procedure display(var ID,hits,walks,outs: integer; var name: string);
     Begin
        write(name);
        gotoxy(24,id);
        write(id);
        gotoxy(28,id);
        write(mean(hits, outs):0:3);
        gotoxy(35,id);
        write(walks);
        writeln;
     end;

   Procedure Input(var data: text; var id,hits,walks,outs: integer;
                   var name: string);
      Begin
         assign(data,'BATTERS.DAT');
         reset(data);
         while not eoln(data) do
            begin
               readln(data,id,hits,walks,outs,name);
               display(id,hits,walks,outs,name);
            end;
         readln;
      end;

    Procedure Main;
    var data: text;
    var id,hits,walks,outs: integer;
    var name: string;
       Begin
          clrscr;
          input(data,id,hits,walks,outs,name);
       end;

begin {main}
   main;
end.{main}