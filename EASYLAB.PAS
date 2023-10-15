Program Uninteresting;
   uses crt;
   var name, first, second: string;
   var place: integer;

   Procedure GIVEN(var first, second, name: string; place: integer);
      Begin
         place:= pos(' ',name);
         first:= copy(name,1,place);
         second:= copy(name,place,maxint);
      end;

   Procedure Input(var name: string);
      Begin
         write('PLEASE ENTER YOUR NAME:  ');
         readln(name);
      end;

   Procedure output(first, second: string);
      Begin
         writeln(second,', ',first);
      end;

   Procedure main;
      begin
         input(name);
         given(first,second,name,place);
         output(first,second);
         readln;
      end;

begin{main}
   main;
end.{main}