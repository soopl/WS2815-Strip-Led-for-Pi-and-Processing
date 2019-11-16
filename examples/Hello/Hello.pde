import ws281x_strip_led_for_pi.*;


Ws2815_led hello;

void setup() {
  size(400,400);
  smooth();
  
  hello = new Ws2815_led(this);
  
  PFont font = createFont("Arial",40);
  textFont(font);
  
  hello.setVariable(4,6);
  print (hello.getVariable());
  
}

void draw() {
  background(0);
  fill(255);
  text(hello.sayHello(), 40, 200);
  
}
