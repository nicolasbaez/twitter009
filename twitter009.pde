void setup() {
  size(512, 256, P3D);
}
float k, w=256;
float r(float v) {
  return radians(v);
}
void draw() {
  clear();
  rotateX(r(k));
  rotateY(r(k/2));
  noFill();
  colorMode(HSB, w);
  stroke(map(sin(r(k)), -1, 1, 0, w), w, w);
  strokeWeight(16);
  box(999+random(99));
  k+=map(sin(r(k)), -1, 1, 1, 8);
}
