program picture_tester;
   Uses Graph, graphx;

   Procedure One;
      VAR a, b : integer;
      BEGIN
        a :=159;
        b := 99;
        SetFillStyle(1,3);
        SetGraphMode(2);
        SetColor(3);
        SetBkColor(9);
        ARC(a,b,300,240,25);               {head}
        Circle(a,b+10,16);                  {mouth}
        Circle(a,b+4,5);                   {nose}
        FloodFill(a,b+5,3);                {nose fill}
        Circle(a-11,b-7,5);                {eye}
        FloodFill(a-12,b-8,3);             {eye fill}
        Circle(a+11,b-7,5);                {eye}
        FloodFill(a+12,b-8,3);             {eye fill}
        ARC(a-20,b-15,28,255,17);          {Outer Ear, left}
        ARC(a+22,b-15,280,160,17);         {Outer Ear, right}
        ARC(a-20,b-15,28,255,9);           {Inner Ear, left}
        ARC(a+22,b-15,280,160,9);          {Inner Ear, right}
        Line(a-1,b+3,a-27,b+1);            {Whisker One}
        Line(a-1,b+5,a-27,b+8);            {whisker Two}
        Line(a+1,b+3,a+27,b+1);            {whisker Three}
        Line(a+1,b+5,a+27,b+8);            {whisker Four}
        Arc(a,b+11,237,305,8);             {smile}
      END;

   Procedure Main;
     VAR a, b : integer;
     BEGIN;
       clearviewport;
       One;
       readln
     END;

     BEGIN;
        Main
     END.
