Program Records;
   uses crt;

   type string = string[20];
   type Student = record
                  name: string[20],
                  age,
                  grade: integer,
                  GPA: real,
                  Parent: string[20],
                  Phone: string[20];
        end;


   Procedure Readfile(var data: text, var cntr: integer);
      constant max: 10;
      Begin
         assign(data, 'names.txt');
         reset(data);
         for cntr:= 1 to max do
            begin

            end;

      End;

   Procedure Printfile(var cntr: integer);
      constant max: 10;
      Begin
        for cntr:= 1 to max
           Begin
              writeln(

      End;

   Procedure Main;
      Begin


      End;