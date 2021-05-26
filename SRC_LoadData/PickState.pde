class PickState{

  //metode
  void display(){   
    background(71, 173, 255);
    rect(width-60,80,50,50);// vis graf
    
    textSize(50);
    text("State", 100, 100);
    
    fill(255, 204, 0); 
    text("Cases", 400, 100);
    
    fill(204, 0, 0);
    text("Deaths", 700, 100);
    
    // Der skrive text for dataet  
    for (int i = 0; i < allStats.size(); i++) {
        StateData state = allStats.get(i);
        fill(255);
        text(state.state, 100, ((i+1) * 150)); // skriver navet på de fire stater valgt i getData
        fill(204, 0, 0);
        text(state.deaths, 700, ((i+1) * 150)); //skriver deaths i de fire stater
        fill(255, 204, 0);
        text(state.cases, 400, ((i+1) * 150)); //skriver cases i de fire stater
    }
  }
}
   
   
