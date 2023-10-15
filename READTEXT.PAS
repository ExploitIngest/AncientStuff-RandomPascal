Program GetData;
   uses crt;
   Var Workfile: text;
            num: real;

   Procedure main;
      Begin
         clrscr;
         assign(workfile,'DATAFILE.DAT');
         reset(workfile);
         while not eof(workfile) do
            Begin
               readln(workfile,num);
               writeln(num:0:2);
               readln;
            end;
      end;

begin {main}
   main;
end. {main}