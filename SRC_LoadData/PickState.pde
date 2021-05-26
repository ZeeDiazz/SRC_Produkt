class PickState{

  void display(){
   
    
    background(71, 173, 255);
    textSize(50);

    text("State", 100, 100);
    
    fill(255, 204, 0);
    rect(width-60,80,50,50);
    text("Cases", 400, 100);
    
    fill(204, 0, 0);
    text("Deaths", 700, 100);
    
    for (int i = 0; i < allStats.size(); i++) {
        StateData state = allStats.get(i);
        fill(255);
        text(state.state, 100, ((i+1) * 150));
        fill(204, 0, 0);
        text(state.deaths, 700, ((i+1) * 150));
        fill(255, 204, 0);
        text(state.cases, 400, ((i+1) * 150));
    }
  }
}
   
