Program Picture_Tester;
   uses Crt,graph,graphx;

   Procedure Set_up;
         begin
            SetGraphMode(3);
            SetBkColor(15);
            SetFillStyle(1,2);
            SetColor(1);
         end;

      Procedure Four;
         {Var pick : char;}
         begin
            clearviewport;
            Circle(180,109,60);     {4}
            LIne(180,109,240,109);  {>>>}
            Line(180,109,120,109);  {<<<}
            Line(180,109,180,158);  {down}
            Line(180,109,180,60);   {^^^}
            FloodFill(200,90,1);




            {WHILE pick NOT := ['n','N'] DO
               begin
                  readln(pick);
                  Case pick of
                  'a' : begin
                           FloodFill(130,90,1);
                           delay(250);
                           FLoodFill(130,90,0);
                        end;
                  's' : begin
                           FloodFill(200,90,1);
                           delay(250);
                        end;
                  'd' : begin
                           FloodFill(130,130,1);
                           delay(250);
                        end;
                  'f' : begin
                           FloodFill(200,130,1);
                           delay(250);
                        end;    }


          end;

      Procedure Eight;
        begin
            clearviewport;
            Circle(180,109,60);      {8}
            Line(180,109,240,109);   {>>>}
            Line(180,109,120,109);   {<<<}
            Line(180,109,180,158);   {down}
            Line(180,109,180,60);    {^^^^}
            Line(180,109,224,143);   {south east}
            Line(180,109,136,143);   {south west}
            Line(180,109,136,75);    {North west}
            Line(180,109,224,75);    {NOrth east}
         end;

      Procedure six;
        begin
           clearviewport;
           Circle(180,109,60);       {6}
           Line(180,109,240,109);    {right}
           Line(180,109,120,109);    {left}
           Line(180,109,144,149);    {south west}
           Line(180,109,215,149);    {south east}
           Line(180,109,144,70);     {North west}
           Line(180,109,215,70);     {North east}
        end;

     Procedure Ten;
       begin
          Clearviewport;
          circle(180,109,60);       {10}
          Line(180,109,240,109);    {right}
          Line(180,109,120,109);    {left}
          line(180,109,130,83);    {north west}
          Line(180,109,160,63);    {north west}
          Line(180,109,230,83);    {north east}
          Line(180,109,130,138);   {south west}
          Line(180,109,160,156);   {south west}
          Line(180,109,200,63);    {north east}
          Line(180,109,200,155);   {south east}
          Line(180,109,232,135);   {south east}
       end;


    Procedure twelve;
       begin
         clearviewport;
         Circle(180,109,60);       {12}
         Line(180,109,240,109);    {right}
         Line(180,109,120,109);    {Left}
         Line(180,109,127,132);    {south west}
         Line(180,109,233,133);    {south east}
         Line(180,109,150,68);     {north west}
         LIne(180,109,210,68);     {north east}
         Line(180,109,180,60);     {north}
         Line(180,109,180,158);    {south}
         Line(180,109,126,86);     {North west west}
         LIne(180,109,234,86);     {North east east}
         Line(180,109,148,150);    {South west west}
         Line(180,109,212,151);    {south east east}
      end;

     {Procedure Choose_Size;
       VAR start : integer;
       begin
          readln(start);
          Case start of
            1 : four;
            2 : six;
            3 : eight;
            4 : ten;
            5 : twelve
          end;
       end;}

     Procedure Main;
     begin
        Clearviewport;
        set_up;
        {Choose_size;}
        readln;
        FOur;
        readln;
        six;
        readln;
        eight;
        readln;
        ten;
        readln;
        twelve;
        readln
     end;

     BEgin
        main
     End.


