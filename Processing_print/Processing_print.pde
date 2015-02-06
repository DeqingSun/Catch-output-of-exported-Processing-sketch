int counter=0;

void setup() {

  frameRate(1/2.0);
}

void draw() {
  System.out.println("Output "+counter);
  System.err.println("ERR output "+counter);
  counter++;
  if (counter == 5) {  //let's have an exception
    throw new RuntimeException("Testing unhandled exception processing.");
  }
}

