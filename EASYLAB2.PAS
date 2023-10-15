{Jason Mills
 1-26-96
 Description:  This program will take a person's full name and title and cut
               it down to a last name comma first name representation.}


Program headache;
   uses crt;

   Procedure Input(var name: string);
      Begin
         write('PLEASE ENTER YOUR NAME:  ');
         readln(name);
      end;

   Procedure CutExtension(var name: string);
      var cntr: integer;
      Begin
         cntr:= POS(',',name);
         Delete(name,cntr,12)
      end;

   Procedure CountSpaces(var X: integer; var name: string);
      var track: string;
      var loop: integer;
      Begin
        X:= 0;
        for loop:= 1 to Length(name) do
           Begin
              track:= copy(name,loop,1);
                If track = ' ' then
                inc(X);
           end;
      End;

   Procedure GIVEN(var name,first,second : string);
      var place: integer;
      Begin
         place:= pos(' ',name);
         first:= copy(name,1,place);
         second:= copy(name, place, maxint);
      end;

   Procedure Twospace(var name: string);
      var short: integer;
      var X: integer;
      Begin
         If X = 2 then
            Begin
               short:= pos(' ',name);
               delete(name,1,short);
            end;
      end;

   Procedure Threespace(var name: string);
      var short: integer;
      var X: integer;
         Begin
            If X = 3 then
               Begin
                  short:= pos(' ',name);
                  delete(name,1,short);
               end;
         end;

   Procedure SelectNameType(var name,first,second : string;X: integer);
      Begin
         case X of
         1: given(name,first,second);
         2: twospace(name);
         3: threespace(name);
         end;
      End;

   Procedure output(first, second: string);
      Begin
         writeln(second,', ',first);
      end;

   Procedure main;
   var name, first, second: string;
   var place,x : integer;
      begin
         Input(name);
         CutExtension(name);
         CountSpaces(x,name);
         SelectNameType(name,first,second,x);
         Given(name,first,second);
         Output(first,second);
         readln;
      end;

begin{main}
   main;
end.{main}