class ShowGraf{
  
  // Metode
  void display(){ 
    
    background(71, 173, 255);
    for (int i = 0; i < allStats.size(); i++) {
      StateData state = allStats.get(i);
      textSize(50);
      
      fill(255);
      text(state.state, 100, ((i+1) * 100)); // Skriver de valgte stater
      
      fill(255, 204, 0);
      rect(370, ((i+1) * 100), state.cases/1500, 15);
      rect(150, 20, 20, 20);
      
      textSize(25);
      text("Cases", 180, 28);
      
      fill(204, 0, 0);
      rect(370, ((i+1) * 100), state.deaths/500, 15);
      rect(20,20,20,20);
      
      textSize(25);
      text("Deaths", 50, 28);
    }
  }
}
