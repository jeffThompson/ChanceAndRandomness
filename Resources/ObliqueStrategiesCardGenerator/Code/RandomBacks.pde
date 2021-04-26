
void generateRandomBacks() {
  int numLines =      200;  // how many lines to draw
  int numCircles =    200;  // # force-field circles to generate
  int minRadius =     5;    // min/max radius of circles
  int maxRadius =     50;
  int numIterations = 10;   // # iterations pushing lines from circles

  // create lines
  ArrayList<Line> lines = new ArrayList<Line>();
  for (int i=0; i<numLines; i++) {
    Line l = new Line();
    lines.add(l);
  }

  // create force-field circles and push lines
  // away from them
  PVector[] circles = new PVector[numCircles];
  for (int i=0; i<circles.length; i++) {
    float radius = random(minRadius, maxRadius);
    float x = random(0, width);
    float y = random(0, height);
    circles[i] = new PVector(x, y, radius);
  }
  for (int i=0; i<numIterations; i++) {
    for (PVector circle : circles) {
      for (Line l : lines) {
        l.update(circle.x, circle.y, circle.z);
      }
    }
  }

  // draw the result
  for (Line l : lines) {
    l.display();
  }
}
