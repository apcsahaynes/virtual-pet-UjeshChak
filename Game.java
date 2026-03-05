public class Game {
    private String name;
    private int happinessIncr;
    private int weightDecr;

    public Game(String name, int happinessIncr, int weightDecr) {
        this.name = name;
        this.happinessIncr = happinessIncr;
        this.weightDecr = weightDecr;
    }

    public String getName() {
        return this.name;
    }

    public int getHappinessIncr() {
        return this.happinessIncr;
    }

    public int getWeightDecr() {
        return this.weightDecr;
    }

    public boolean isWinner() {
        double randNumber = Math.floor(Math.random() * 2);

        return randNumber == 1;
    }
}
