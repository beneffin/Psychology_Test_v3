//state is an integer 
//used to keep track of place in the narrative 
int state = 0; 
PFont f; 
PImage forrest; 
PImage forrest1;
PImage forrest2; 
PImage forrest3;
PImage forrest4;
PImage forrest5; 
PImage forrest0;
PImage coward;
PImage quit;

//int tempState=0;

void setup(){
  size(700, 700); 
  f = createFont("Arial", 16, true); 
  textFont(f, 20);
  forrest = loadImage("forrest.png");
  forrest1 = loadImage("forrest1.png");
  forrest2 = loadImage("forrest2.png");
  forrest3 = loadImage("forrest3.png");
  forrest4 = loadImage("forrest4.png");
  forrest5 = loadImage("forrest5.png");
  forrest0 = loadImage("forrest0.png");
  coward = loadImage("coward.png");
  quit = loadImage("quit.png");
}

void draw(){
    if(state == 0) {
    //This is a psychology test. Every path you choose will define you.
    //Now, imagine yourself walking in the woods alone.  
    //Do you want to continue?   Y/N
    imageMode(CENTER); 
    image(forrest0, width/2, height/2); 
    state = 9;  
   }
 
    if(state == 1) {
    //Don’t be a coward!
    //Click enter to change your mind.
    imageMode(CENTER); 
    image(coward, width/2, height/2); 
    state = 10;  
   }
  
  if(state == 2) {
    //You are walking in the woods alone. You enter a pathway covered with dried leaves.
    //Suddenly, you heard a sound of twig cracked. 
    //a small twig just fall in front of you. What would you do? 
    //A. It doesn’t bother you. You keep walking 
    //B. Observe around.
    imageMode(CENTER); 
    image(forrest, width/2, height/2); 
    state = 11;  
   }
 
   if(state == 3){
    //Psychology Meaning 
    //Twig means a small problem in your life. If you have small problem, you tend to observe the situation around you. 
    //Back to the woods. 
    //After you feel everything is fine,  you walk deeper in the woods.  Suddenly in distance, you seeing a tiger staring at you. What would you do? 
    //A. You jump to fight
    //B. Stare back and observe
    //C. Run back home
    imageMode(CENTER); 
    image(forrest1, width/2, height/2); 
    state = 12; 
   }
   
   
   if(state == 4){
    //Psychology Meaning 
    //Twig means a small problem in your life. If you have small problem, you tend to ignore it. Either you ignorance or you don’t want to bother with it.
    //Back to the woods.
    ////You leave the twig alone. Now you walk deeper in the woods.  Suddenly in distance, you seeing a tiger staring at you. What would you do? 
    //A.You jump to fight
    //B.Stare back and observe   
    //C.Run back home"
    imageMode(CENTER); 
    image(forrest2, width/2, height/2); 
    state = 13; 
   }
   
   if(state == 5){
     //Psychology Meaning 
     // Tiger means a big problem. You tend to fight a problem and it will leaves you eiter win or lose.
     // Enter. Start Over
     // Esc. Quit
    imageMode(CENTER); 
    image(forrest3, width/2, height/2); 
    control();
    state = 14; 
   }
   
   if(state ==6){
    //Psychology Meaning 
    //Tiger means a big problem. You tend to observe the problem and probably solve it.
    //Enter. Start Over
    //Esc. Quit
   imageMode(CENTER);
   image(forrest4, width/2, height/2);
   control();
   state = 15;
   }
   
   if(state == 7) {
    //Psychology Meaning
    //Tiger means a big problem. 
    //You are a bloody coward. You run from a problem? I bet the tiger will chasing you and eating you.
    //Enter. Start Over
    //Esc. Quit
    imageMode(CENTER);
    image(forrest5, width/2, height/2);
    control();
    state = 16;
   }
   
   if(state == 8) {
    //Quit
    imageMode(CENTER);
    image(quit, width/2, height/2);
    state = 17;
   }
   
}


void keyPressed(){
  //START
    
   if (key=='y' || key=='Y') {
   state=2;}
   else if (key =='N' || key =='n'){
   state=1;}
  
  if (key==ENTER) {
    state=0;
  }
  if (key==8) {
    state=8;
  }
  
  //STAGE
  
  if(state == 11) {
    if( key == 'a'){
      state = 4; }
    else if (key == 'b'){
      state = 3; }
  }
  
  if(state == 12){
    if(key == 'a'){
      state = 5; }
      
    else if (key == 'b'){
      state = 6;}
    
    else if (key == 'c'){
      state = 7;}      
  }
  
  if (state ==13){
    if(key =='a'){
     state = 5;}
    
    else if (key =='b'){
     state = 6;}
     
    else if (key =='c'){
     state = 7;}
  }
}

void control() {
  textAlign(RIGHT);
  text("Again: RETURN\nQuit: DEL", width-20, height-50);
}