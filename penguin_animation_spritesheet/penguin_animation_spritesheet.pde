PImage spritesheet;
JSONObject spritedata;

ArrayList<PImage> animation;

ArrayList<Sprite> penguins;

void setup() {
  size(640, 480);
  animation = new ArrayList<PImage>();
  penguins = new ArrayList<Sprite>();
  spritedata = loadJSONObject("penguin/penguin.json");
  spritesheet = loadImage("penguin/penguin.png");
  JSONArray frames = spritedata.getJSONArray("frames");
  for (int i = 0; i < frames.size(); i++) {
    JSONObject frame = frames.getJSONObject(i);
    JSONObject pos = frame.getJSONObject("position");
    int x = pos.getInt("x");
    int y = pos.getInt("y");
    int w = pos.getInt("w");
    int h = pos.getInt("h");
    PImage img = spritesheet.get(x, y, w, h);
    animation.add(img);
  }

  for (int i = 0; i < 5; i++) {
    penguins.add(new Sprite(animation, 0, i * 75, random(1, 1.4)));
  }
}

void draw() {
  background(0);

  for (Sprite penguin: penguins) {
    penguin.show();
    penguin.animate();
  }

  // image(animation[frameCount % animation.length], 0, 0);
}
