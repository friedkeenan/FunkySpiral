class Color{
   float r,g,b,a;
   int[] dir=new int[4];
   Color(float r_,float g_,float b_,float a_){
     r=r_;
     g=g_;
     b=b_;
     a=a_;
     int up=new int[]{-1,1}[int(random(2))];
     for(int i=0;i<dir.length;i++)
       dir[i]=up;//new int[]{-1,1}[int(random(2))];
   }
   Color(float r_,float g_,float b_){
     this(r_,g_,b_,255);
   }
   Color(color c){
     this(red(c),green(c),blue(c),alpha(c));
   }
   Color(){
     this(random(256),random(256),random(256));
   }
   color col(){
     return color(r,g,b,a);
   }
   void changeColor(float diff,boolean doAlpha){
     if(r>=255||r<=0)
       dir[0]=-dir[0];
     if(g>=255||g<=0)
       dir[1]=-dir[1];
     if(b>=255||g<=0)
       dir[2]=-dir[2];
     if(doAlpha&&(a>=255||a<=0))
       dir[3]=-dir[3];
     r+=dir[0]*diff;
     g+=dir[1]*diff;
     b+=dir[2]*diff;
     if(doAlpha)
       a+=dir[3]*diff;
   }
   void changeColor(float diff){
     changeColor(diff,false);
   }
   void changeColor(){
     changeColor(1);
   }
}
