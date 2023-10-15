Program Test;
   uses crt;
   type string5 = string[6];

   Procedure Initialize(var A,B,C,D,E,F,G,H,I,J: integer);
      Begin
         A:=0;
         B:=0;
         C:=0;
         D:=0;
         E:=0;
         F:=0;
         G:=0;
         H:=0;
         I:=0;
         J:=0;
      end;

   Procedure Classification(var A,B,C,D,E,F,G,H,I,J,num: integer);
      Begin
         If num < 10 then
         inc(J);
         If (num >=10) and (num <=19) then
         inc(I);
         If (num >=20) and (num <=29) then
         inc(H);
         If (num >=30) and (num <=39) then
         inc(G);
         If (num >=40) and (num <=49) then
         inc(F);
         If (num >=50) and (num <=59) then
         inc(E);
         If (num >=60) and (num <=69) then
         inc(D);
         If (num >=70) and (num <=79) then
         inc(C);
         If (num >=80) and (num <=89) then
         inc(B);
         If num >=90 then
         inc(A);
      end;

   Function Mean(var range, X: integer): real;
      Begin
            mean:= range/x*100
      end;

   Procedure Bars(x:integer; range:string5; percent:real);
     begin
      window(x,21-round(percent),x+4,20);
      textbackground(white);
      clrscr;
      window(1,1,80,25);
      gotoxy(x+1,20-round(percent));
      textbackground(blue);
      writeln(percent:1:0,'%');
      gotoxy(x,22);
      writeln(range);
     end;


   Procedure DrawAxis;
      var x,y:integer;
      begin
        for y := 2 to 20 do
          begin
            gotoxy(2,y);
            if y>11 then writeln(' ',21-y,'³')
            else writeln(21-y,'³');

          end;
        gotoxy(4,21);
        write('À');
        for x := 5 to 75 do
           begin
             gotoxy(x,21);
             write('Ä');
           end;
      end;

   Procedure DrawGraph(a,b,c,d,e,f,g,h,i,j,x:integer);
      var cntr: integer;
      begin
        textbackground(blue);
        clrscr;
        textcolor(white);
        DrawAxis;
        bars(6,'0-9',mean(a,x));
        bars(13,'10-19',mean(b,x));
        bars(20,'20-29',mean(c,x));
        bars(27,'30-39',mean(d,x));
        bars(34,'40-49',mean(e,x));
        bars(41,'50-59',mean(f,x));
        bars(48,'60-69',mean(g,x));
        bars(55,'70-79',mean(h,x));
        bars(62,'80-89',mean(i,x));
        bars(69,'90-100',mean(j,x));
      end;

   Procedure Input(var data: text; var title: string;
                   var A,B,C,D,E,F,G,H,I,J,X,num: integer);
      Begin
         clrscr;
         X:=0;
         assign(data,'scores.dat');
         reset(data);
         readln(data, x, title);
         Initialize(a,b,c,d,e,f,g,h,i,j);
         while not eof(data) do
            begin
               read(data,num);
               Classification(a,b,c,d,e,f,g,h,i,j,num);
            end;
         end;


   Procedure Output(var A,B,C,D,E,F,G,H,I,J,X,num: integer);
      Begin
         textcolor(black);
         textbackground(red);
         window(1,25,5,A);
         clrscr;

         window(7,25,12,B);
         textbackground(white);


         window(14,25,19,C);
         textbackground(yellow);


         window(21,25,26,D);
         textbackground(green);


         window(28,25,33,E);
         textbackground(blue);


         window(35,25,40,F);
         textbackground(cyan);


         window(42,25,47,G);
         textbackground(red);


         window(49,25,54,H);
         textbackground(white);


         window(56,25,61,I);
         textbackground(yellow);


         window(63,25,68,J);
         textbackground(green);


         gotoxy(1,A+1);
         writeln(A,'%');
         gotoxy(7,B+1);
         writeln(B,'%');
         gotoxy(14,C+1);
         writeln(C,'%');
         gotoxy(21,D+1);
         writeln(D,'%');
         gotoxy(28,E+1);
         writeln(E,'%');
         gotoxy(35,F+1);
         writeln(F,'%');
         gotoxy(42,G+1);
         writeln(G,'%');
         gotoxy(49,H+1);
         writeln(H,'%');
         gotoxy(56,I+1);
         writeln(I,'%');
         gotoxy(63,J+1);
         writeln(J,'%');

         writeln('The number of test scores is:  ',X);
         writeln('The class average is:  ',mean(X,num));
         writeln('Here are the range percentages:  ');
      end;

   Procedure Main;
   var A,B,C,D,E,F,G,H,I,J,X,num,counter: integer;
   var data: text;
   var title: string;
      Begin
         clrscr;
         Input(data,title,A,B,C,D,E,F,G,H,I,J,X,num);
         DrawGraph(a,b,c,d,e,f,g,h,i,j,x);
       {  Output(a,b,c,d,e,f,g,h,i,j,x,num);}
         readln;
      end;

begin{main}
   main;
end.{main}