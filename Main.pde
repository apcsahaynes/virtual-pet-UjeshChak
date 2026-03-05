VirtualPet myPet;

Button feedButton;
Button playButton;
ArrayList<String> a;

// How many milliseconds between each status update
// (increase to slow down, decrease to speed up)
final int UPDATE_INTERVAL = 10000;
int lastUpdateTime = 0;

// ---- Action message ----
String actionMessage = "";
int messageTime = 0;
final int MESSAGE_DURATION = 2000; // milliseconds to show the message

void setup() {
  size(600, 500);
  textFont(createFont("Arial", 16, true));

  myPet = new VirtualPet("Coco");
  
  a = new ArrayList<String>();
  a.add("Watermelon");
  a.add("Chocolate");
  a.add("Pizza");
  a.add("Apple");
  a.add("Pasta");
  a.add("Ramen");
  a.add("Chicken");
  a.add("Rice");

  // Buttons sit along the bottom of the screen
  // Button(label, x, y, width, height)
  feedButton = new Button("Feed", 150, 430, 120, 45);
  playButton = new Button("Play", 330, 430, 120, 45);
}

void draw() {
  background(245, 240, 255);

  // ---- Timed status update ----
  if (millis() - lastUpdateTime >= UPDATE_INTERVAL) {
    myPet.updateStatus();
    lastUpdateTime = millis();
  }

  // ---- Draw sections ----
  drawPetArea();
  drawStats(myPet);
  feedButton.display();
  playButton.display();
  drawMessage();

}

void mousePressed() {
  if (feedButton.isClicked(mouseX, mouseY)) {
    String foodName = a.get((int) random(0, 8));
    Food f = new Food(foodName, 3, 2, 2);
    myPet.feed(f);
    showMessage(f.getName() + " eaten!");
    //print(a.get(2));
  }

  if (playButton.isClicked(mouseX, mouseY)) {
    Game g = new Game("Coin Toss", 2, 1);
    myPet.play(g);
    showMessage(g.getName() + " played!");
  }
}

// Call this to set a new message
void showMessage(String msg) {
  actionMessage = msg;
  messageTime = millis();
}
