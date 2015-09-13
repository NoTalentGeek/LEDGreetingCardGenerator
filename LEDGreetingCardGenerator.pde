import processing.pdf.*;

boolean isSaving    = false;
void setup          (){

    size        (420, 595);
    background  (255     );
    noSmooth    (        );

}
void draw           (){

    if(isSaving){ beginRecord(PDF, "LEDGreetingCardGenerator.pdf"); }

    line        (0 , (height/2), width , (height/2) );
    line        ((width/2), 0 , (width/2), height   );

    stroke      (255, 0, 0                               );
    line        ((width/2), (height/4), width, (height/4));
    line        (0, ((3*height)/4), width, ((3*height)/4));
    stroke      (0                                       );

    stroke      (255, 0, 0                                         );
    line        ((width/4), height, (width/2), (height - (width/4)));
    stroke      (0                                                 );
    line        (((3*width)/4), height, width, (height - (width/4)));

    stroke      (255, 0, 0                                                            );
    line        (((11*width)/16), ((11*height)/16), ((13*width)/16), ((11*height)/16) );
    line        (((11*width)/16), ((13*height)/16), ((13*width)/16), ((13*height)/16) );
    stroke      (0                                                                    );
    line        (((11*width)/16), ((11*height)/16), ((11*width)/16), ((13*height)/16) );
    line        (((13*width)/16), ((11*height)/16), ((13*width)/16), ((13*height)/16) );

    noStroke    (                                                                                         );

    fill        (155, 155, 155                                                                            );
    rect        (((4*width)/16) - 10, ((25*height)/32) - 5, 20, 10                                       );
    stroke      (155, 155, 155                                                                            );
    line        (((4*width)/16) - 10, ((25*height)/32), ((4*width)/16) - 10 + 80, ((25*height)/32)      );
    line        (((4*width)/16) - 10, ((25*height)/32), ((4*width)/16) - 10 + 20 - 80, ((25*height)/32) );

    fill        (155, 155, 155                                                                            );
    rect        (((3*width)/32), ((26*height)/32), 10, 20                                                 );
    stroke      (155, 155, 155                                                                            );
    line        (((3*width)/32) + 5, ((26*height)/32), ((3*width)/32) + 5, ((26*height)/32) - 30          );
    line        (((3*width)/32) + 5, ((26*height)/32), ((3*width)/32) + 5, ((26*height)/32) + 20 + 30     );

    fill        (0                                                                      );
    rect        (((7*width)/16), ((25*height)/32), ((width/21)/2), ((13*height)/64)     );
    rect        (((1*width)/16), ((28*height)/32), ((width*221)/768), ((height*10)/595) );

    if(isSaving){

        endRecord  ();
        isSaving   = false;
        exit       ();

    }

}
void mousePressed   (){ isSaving = true; }