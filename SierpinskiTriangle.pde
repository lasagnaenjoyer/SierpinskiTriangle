 public void settings() {
    size(500, 500);
  }

  public void setup(){
    //empty!
  }
  public void draw(){
    sierpinski(100,300,300);
  }
  public void mouseDragged(){ //optional

  }
  public void sierpinski(int x, int y, int len) {
    if (len < 30) {
      fill((int)(Math.random()*235)+50,(int)(Math.random()*235)+50, (int)(Math.random()*235)+50); 
      triangle(x, y, x+len, y, x+len/2, y-len);
    }
    else {
      sierpinski(x, y, len/2);
      sierpinski(x+len/2, y, len/2);
      sierpinski(x+len/4, y-len/2, len/2);
    }
  }
