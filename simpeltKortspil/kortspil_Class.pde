class Kortspil {
  // Data
  ArrayList<Kort> kortListe = new ArrayList<Kort>();
  ArrayList<Kort> kortTrukket = new ArrayList<Kort>();

  // Metoder
  void lavAlleKort() {
    String[] kortNavne = {"Hjerte", "Ruder", "Spar", "Klør"};
  
    for(int i = 0; i < kortNavne.length; i++) {
      Kort S = new Kort(kortNavne[i] + " A", 11);
      kortspil.kortListe.add(S);
      
      Kort konge = new Kort(kortNavne[i] + " Konge", 10);
      kortspil.kortListe.add(konge);
      
      Kort dronning = new Kort(kortNavne[i] + " Dronning", 10);
      kortspil.kortListe.add(dronning);
      
      Kort knaegt = new Kort(kortNavne[i] + " Knægt", 10);
      kortspil.kortListe.add(knaegt);
      
      Kort ten = new Kort(kortNavne[i], 10);
      kortspil.kortListe.add(ten);
      
      Kort nine = new Kort(kortNavne[i], 9);
      kortspil.kortListe.add(nine);
      
      Kort eight = new Kort(kortNavne[i], 8);
      kortspil.kortListe.add(eight);
      
      Kort seven = new Kort(kortNavne[i], 7);
      kortspil.kortListe.add(seven);
      
      Kort six = new Kort(kortNavne[i], 6);
      kortspil.kortListe.add(six);
      
      Kort five = new Kort(kortNavne[i], 5);
      kortspil.kortListe.add(five);
      
      Kort four = new Kort(kortNavne[i], 4);
      kortspil.kortListe.add(four);
      
      Kort three = new Kort(kortNavne[i], 3);
      kortspil.kortListe.add(three);
      
      Kort two = new Kort(kortNavne[i], 2);
      kortspil.kortListe.add(two);
      
      Kort one = new Kort(kortNavne[i], 1);
      kortspil.kortListe.add(one);
    }
  }
  
  Kort traetKort() {
    return kortListe.get(0);
  }
  
  void visScore() {
  
  }
}
