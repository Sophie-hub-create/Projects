interface Testat01 extends Comparable<Testat01> {
    double getBreite();
    double getHoehe();

    default double getFlaeche() {
        return this.getBreite() * this.getHoehe();
    }
    default double getUmfang() {
        return 2*this.getBreite() + 2*this.getHoehe();
    }

    default boolean istQuadratisch() {
        return (this.getBreite() == this.getHoehe());
    }
    default boolean groesserAls(Testat01 that){
        return (this.getFlaeche() < that.getFlaeche());
    }
        

    default int compareTo(Testat01 o){
        if (this.getFlaeche() < o.getFlaeche()) {
            return -1;
          } else if (this.getFlaeche() == o.getFlaeche()) {
            return 0;
          } else {
            return 1;
          }
    }
 }
