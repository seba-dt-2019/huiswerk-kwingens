int robotX,robotY,robotGroot, robotStap,vrachtX,vrachtY,vrachtGroot;
boolean vrachtOpRobot;

void setup(){
  size (500,500);
  robotX = 0;
  robotY = 0;
  robotGroot = 50;
  robotStap =50;
  vrachtX = 200;
  vrachtY = 200;
  vrachtGroot = robotGroot;
  vrachtOpRobot = false;
};

void draw (){
  background (0);
  robot();
  vracht();
  println("robotX = " + robotX);
  println("robotY = " + robotY);
  println("robotGroot = " + robotGroot);
  println(vrachtOpRobot);
};

void robot(){
  fill(255);
  rect(robotX,robotY,robotGroot,robotGroot);
};

void keyPressed(){
    if (keyCode == ENTER && robotX == vrachtX  && robotY == vrachtY && vrachtOpRobot == false){
      vrachtOpRobot = true;
    }
    else if (keyCode == ENTER && robotX == vrachtX  && robotY == vrachtY && vrachtOpRobot == true){
      vrachtOpRobot = false;
    }
  else if (key == CODED){
    if (keyCode == UP && robotY != 0){
      robotY -= robotStap;
      if (vrachtOpRobot == true){
        vrachtY -= robotStap;
      }
    } 
    else if (keyCode == DOWN && robotY != height-robotGroot){
      robotY += robotStap;
      if (vrachtOpRobot == true){
        vrachtY += robotStap;
      }
    }
    else if (keyCode == LEFT && robotX != 0){
      robotX -= robotStap;
      if (vrachtOpRobot == true){
        vrachtX -= robotStap;
      }
    }
    else if (keyCode == RIGHT && robotX != width-robotGroot){
      robotX += robotStap;
      if (vrachtOpRobot == true){
        vrachtX += robotStap;
      }
    }    
  }
};

void vracht(){
  ellipseMode(CORNER);
  fill(200);
  ellipse(vrachtX,vrachtY,vrachtGroot,vrachtGroot);
};
