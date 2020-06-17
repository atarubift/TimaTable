PImage homePic;
int changePic = 0;

void setting(){
  background(settingPic);
  showBar();
  change();
  drawPic();
}

void change(){
  if(changePic == 0){
    homePic = defaultPic;
  }else if ( changePic == 1){
    homePic = hanabi;
  }else if (changePic == 2){
    homePic = seaven;
  }else if (changePic == 3){
    homePic = star;
  }
}

void drawPic(){
  image(defaultPic, 50, 90, 150, 200);
  image(hanabi, 280, 90, 150, 200);
  image(seaven, 50, 360, 150, 200);
  image(star, 280, 360, 150, 200);
}
