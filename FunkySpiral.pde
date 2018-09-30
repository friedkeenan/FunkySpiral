class Line{
  int weight;
  Color col;
  PVector loc,oldLoc,vel;
  Line(float x,float y,float speed,int wgt,Color c){
    loc=new PVector(x,y);
    oldLoc=loc.copy();
    vel=PVector.random2D();
    vel.setMag(speed);
    weight=wgt;
    col=c;
  }
  void update(){
    vel.rotate(1.1);
    vel.mult(1.01);
    loc.add(vel);
    strokeWeight(weight);
    //weight+=.1;
    stroke(col.col());
    //col.changeColor(8);
    line(oldLoc.x,oldLoc.y,loc.x,loc.y);
    oldLoc=loc.copy();
  }
}
Line[] lines=new Line[100];
void keyPressed(){
  if(key=='s')
    saveFrame("background.png");
}
void setup(){
   size(1280,720);
   background(0);
   for(int i=0;i<lines.length;i++){
     lines[i]=new Line(width/2,height/2,1,30,new Color(color(random(128))));
   }
}
void draw(){
  for(Line line:lines)
    line.update();
}
