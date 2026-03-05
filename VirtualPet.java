public class VirtualPet {
    private String name;
    private int energy;
    private int weight;
    private int happiness;
    private int ageMonths;
    private int ageYears;
    
    public VirtualPet(String name) {
      this.name = name;
      this.energy = 0;
      this.weight = 5;
      this.happiness = 0;
      this.ageMonths = 0;
    }

    public String getName() {
        return name;
    }

    public String toString() {
        return name + "'s information: \nEnergy: " + energy +
"\nWeight: " + weight + "\nHappiness: "+ happiness + "\nAge: " +
ageYears + " years and " + ageMonths + " months";
    }

    public int getEnergyLevel() {
        return energy;
    }

    public int getHappinessLevel() {
        return happiness;
    }
    public int getAgeMonths() {
      return ageMonths;
    }
    public int getWeight() {
      return weight;
    }

    public void feed(Food food) {
        this.energy += food.getEnergyIncrease();
        this.weight += food.getWeightGain();
        this.happiness += food.getHappinessIncrease();
    }

    public void play(Game game) {
        if (game.isWinner()) {
            this.happiness += game.getHappinessIncr();
            this.weight -= game.getWeightDecr();
        }
    }

    public void updateStatus() {
        if (happiness > 0) {
            happiness--;
        }

        if (energy > 0) {
            energy--;
        }

        ageMonths++;
        ageConverter();
    }

    private void ageConverter() {
        if (ageMonths >= 12) {
            ageYears++;
            ageMonths = 0;
        }
    }
}
