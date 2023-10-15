Program Newfile;
   uses crt;

   Procedure Double(var data, data2: text; letter: char);
      Begin
         assign(data, 'para.txt');
         reset(data);
         assign(data2,'newpara.txt');
         rewrite(data2);
         while not eof(data) do
            Begin
               read(data,letter);
               write(data2,letter);
            end;
      end;

   Procedure Main;
      Var data, data2: text;
      var letter : char;
      Begin
         Double(data,data2,letter);
         close(data2);
      end;


begin{main}
   main;
end.{main}

