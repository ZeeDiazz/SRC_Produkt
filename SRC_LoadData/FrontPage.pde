class FrontPage {
  void display(){
    background(71, 173, 255);
    fill(0, 0, 153);
    rect(20, 20, 60, 60);
  
    textSize(41);
    text("Homeland Secutity", 90, 50);
    text("CovidData", width/2-100, 50);
  
    stroke(0, 0, 140);
    line(0, 100, 2000, 100);
    line(0, 160, 2000, 160);
    line(960, 100, 960, 160);
    noStroke();
  
    text("Yankeedom",90, 120);
    text("About us",1050, 120);
  
}
}
