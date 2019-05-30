Globe gb;
PShape img;
boolean newyork = false;
boolean test2 = false;
boolean hawaii = false;
boolean test3 = false;
boolean aust = false;
boolean test4 = false;
boolean safar = false;
boolean test5 = false;
void setup() {
  size(800, 400);
  gb=new Globe(400, 200);

  img = loadShape("data/world.svg");
}
void draw() {
  background(0, 0, 0); 
  gb.display();

  shape(img, 0, 0, 800, 400);
  if (test2) {
    NewYork();
  }
  if (test3) {
    Hawaii();
  }
  if (test3) {
    Hawaii();
  }
  if (test4) {
    Australia();
  }
  if (test5) {
    Safari();
  }
}
void mouseMoved() { 
  checkButtons();
}

void mouseDragged() {
  checkButtons();
}

void checkButtons() {
  if (mouseX > 200 && mouseX <300  && mouseY > 0 && mouseY < 400) {
    newyork= true;
  }
  if (mouseX > 0 && mouseX <200  && mouseY > 0 && mouseY <400) {
    hawaii= true;
  }
  if (mouseX > 500 && mouseX <800  && mouseY > 0 && mouseY <400) {
    aust= true;
  }
  if (mouseX > 300 && mouseX <500  && mouseY > 0 && mouseY <400) {
    safar= true;
  }
}

void mousePressed() {
  if (newyork) {
    test2 = true;
    newyork = false;
   
    hawaii = false;
    test3 = false;
    aust = false;
    test4 = false;
    safar = false;
    test5 = false;
  }
  if (hawaii) {
    test3 = true;
    newyork = false;
    test2 = false;
    hawaii = false;
    aust = false;
    test4 = false;
    safar = false;
    test5 = false;
  }
  if (aust) {
    test4 = true;
    newyork = false;
    test2 = false;
    hawaii = false;
    test3 = false;
    aust = false;
    safar = false;
    test5 = false;
  }
  if (safar) {
    test5 = true;
    newyork = false;
    test2 = false;
    hawaii = false;
    test3 = false;
    aust = false;
    test4 = false;
    safar = false;
  }
}
