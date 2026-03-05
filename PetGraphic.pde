// =============================================
//
// OPTION A: Use Processing graphics
//   - Write your drawing code inside drawPetGraphic()
//   - You can make multiple versions (happy, sad, etc.)
//     and call the right one based on pet state
//
// OPTION B: Use images (PImage)
//   - Add image files to your sketch's /data folder
//   - Load them in loadPetImages() below
//   - Add them to the petImages ArrayList
//   - Display the right one in drawPetGraphic()
// =============================================


// =============================================
// OPTION B SETUP  (comment out if using Option A)
// =============================================

// ArrayList<PImage> petImages;   // one image per mood/state

// void loadPetImages() {
//   petImages = new ArrayList<PImage>();
//   petImages.add(loadImage("neutral.png"));  // index 0 - neutral
//   petImages.add(loadImage("happy.png"));    // index 1 - happy
//   petImages.add(loadImage("sad.png"));      // index 2 - sad
//   // add more as needed!
// }
//
// Call loadPetImages() at the end of setup() in VirtualPet.pde


// =============================================
// Pet area background + border
// (shared by both options - leave this)
// =============================================

void drawPetArea() {
  // Background for the pet zone
  fill(220, 210, 245);
  stroke(180, 160, 220);
  strokeWeight(2);
  rect(20, 20, 380, 390, 16);

  // Draw whichever graphic option you're using
  drawPetGraphic(myPet);
}


// =============================================
// OPTION A: Drawing with Processing shapes
// Replace or add to the placeholder below!
// =============================================

void drawPetGraphic(VirtualPet pet) {

  // ---- Placeholder shape ----
  // Replace this with your own drawing,
  // or swap it for an image (see Option B below).

  // Body
  fill(170, 210, 255);
  noStroke();
  ellipse(210, 220, 140 + pet.getWeight(), 120 + pet.getWeight());

  // Head
  fill(170, 210, 255);
  ellipse(210, 145, 100, 90);

  // Eyes
  fill(50);
  ellipse(190, 138, 14, 14);
  ellipse(230, 138, 14, 14);

  // Eye shine
  fill(255);
  ellipse(195, 134, 5, 5);
  ellipse(235, 134, 5, 5);

  // Nose
  fill(255, 160, 180);
  ellipse(210, 152, 10, 7);

  // Mouth
  noFill();
  stroke(80);
  strokeWeight(2);
  if (pet.getHappinessLevel() > 50) {
  arc(210, 160, 24, 14, 0, PI);
  }
  else if (pet.getHappinessLevel() <= 50 && pet.getHappinessLevel() > 25) {
    line(198, 160, 222, 160);
  }
  else if (pet.getHappinessLevel() <= 25) {
    arc(210, 170, 24, 14, PI, TWO_PI);
  }

  // Ears
  fill(170, 210, 255);
  noStroke();
  triangle(178, 108, 168, 75, 195, 100);
  triangle(242, 108, 252, 75, 225, 100);

  // Inner ears
  fill(255, 180, 200);
  triangle(180, 105, 172, 82, 193, 100);
  triangle(240, 105, 248, 82, 227, 100);

  // ---- END placeholder ----


  // =============================================
  // OPTION B: Display a PImage instead
  // Uncomment and adjust once images are loaded.
  // =============================================

  // Choose which image based on pet state:
  // int index = 0; // neutral default
  // if (myPet.getEnergyLevel() >= 5 && myPet.getHappinessLevel() >= 5) {
  //   index = 1; // happy
  // } else if (myPet.getHappinessLevel() == 0) {
  //   index = 2; // sad
  // }
  // image(petImages.get(index), 60, 60, 300, 300);
}
