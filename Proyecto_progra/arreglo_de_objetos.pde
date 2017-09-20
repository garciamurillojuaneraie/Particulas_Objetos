ArrayList <particula> particulas; 


void setup(){
  size(400,400);
  
  particulas = new ArrayList<particula>();
  for (int i=0; i<100; i++){
    particulas.add(new particula());
  }
}

void draw(){
  background(255);
  for(particula p : particulas){
    p.display();
    p.movimiento();
    p.rebotar();
  }
}

void mousePressed(){
  particula foo = new particula(mouseX,mouseY);
  particulas.add(foo);
}

class particula{
  float x, y, v, a, t,a1,a2;
  color c;
  
  particula(float x_, float y_, float v_, float a_, float t_, color c_){
    x=x_;
    y=y_;
    v=v_;
    a=a_;
    t=t_;
    c=c_;
  }
  
  particula(){
    x=random(400);
    y=random(400);
    v=random(5);
    a=random(180);
    t=random(10,30);
    c=color(random(255),random(255),random(255));
    a1=cos(a);
    a2=sin(a);
  }
  
  particula(float x_,float y_){
    x=x_;
    y=y_;
    v=random(5);
    a=random(180);
    t=random(10,30);
    c=color(random(255),random(255),random(255));
    a1=cos(a);
    a2=sin(a);
    
  }
  
  void display(){
    pushMatrix();
      translate(x,y);
      noStroke();
      fill(c);
      ellipse(0,0,t,t);
    popMatrix();
  }
  
  void movimiento(){
    
    
    x += a1*v;
    y += a2*v;
    
  }
  
  void rebotar(){
    if(x>=400||x<=0){
    a1*=-1;}
    if(y>=400||y<=0){
    a2*=-1;}
    
  }
  
}