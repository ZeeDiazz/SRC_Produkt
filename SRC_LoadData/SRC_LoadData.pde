ArrayList<StateData> allStats = new ArrayList<StateData>();
Loading loading = new Loading();
Table table;

PickState PS;
About AB;
FrontPage FB;
ShowGraf SG;

boolean ShowPickState = false;
boolean ShowAbout = false;
boolean ShowFrontPage = true;
boolean ShowGraf = false;

void setup(){
  fullScreen();
  textAlign(LEFT, CENTER);
  PS = new PickState();
  AB = new About();
  FB = new FrontPage();
  SG = new ShowGraf();
  
  table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
  getData();
}

void draw(){
  clear();
  fill(200,200,0);
  //Fake loading 
  if (loading.isLoading == true) {
    loading.display();
    loading.load();
  }
  else if (ShowPickState == true && ShowFrontPage == false && ShowAbout == false){PS.display();} 
  else if (ShowAbout == true && ShowPickState == false && ShowFrontPage == false) {AB.display();}
  else if (ShowGraf == true && ShowAbout == false && ShowPickState == false && ShowFrontPage == false){SG.display();}
  else {FB.display();}
}

void getData(){
  
  for (TableRow row : table.rows()) {
    String stateName = row.getString("state");
    int caseNum = row.getInt("cases");
    int deathNum = row.getInt("deaths");
    
    switch(stateName){
      case "New York":
        allStats.add(new StateData(stateName,caseNum, deathNum));
        break;
      case "Michigan":
        allStats.add(new StateData(stateName,caseNum, deathNum));
        break;
      case "Wisconsin":
        allStats.add(new StateData(stateName,caseNum, deathNum));
        break;
      case "Minnesota":
        allStats.add(new StateData(stateName,caseNum, deathNum));
        break;
      default:
      break;
    }
  }
}

void mousePressed() {
  if(mouseX <= 960 && mouseY >= 100 && mouseY <= 160){ 
    ShowPickState = true;
    ShowAbout = false;
    ShowFrontPage = false;
    ShowGraf = false;
  }
  if( ShowPickState == false) {
    if(mouseX >= 960 && mouseY >= 100 && mouseY <= 160){ 
      ShowAbout = true;
      ShowPickState = false;
      ShowFrontPage = false;
      ShowGraf = false;
    }
  }
  if(mouseX >= 1860 && mouseY >=80 && mouseY <=175 && mouseX <=1910){
    ShowAbout = false;
    ShowPickState = false;
    ShowFrontPage = false;
    ShowGraf = true;
  }
}
