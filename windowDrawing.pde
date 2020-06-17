int button_x = 45;//基点となるx座標
int button_y = 240;//基点となるy座標
int button_size = 165;//各ボタンの大きさ
int interval_x = 60;
int interval_y = 35;
int c = 110;

void windowDrawing() {
  textAlign(BASELINE);
  //各アイコンの枠組み
  resetMatrix();
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      noStroke();
      fill(255, 128, 0, c);
      rect(button_x + (button_size + interval_x) * i, button_y + (button_size +  interval_y) * j, button_size, button_size, 30);
      fill(255, 128, 0, 100);
      rect(60 + (135 + 90) * i, 255 + (135 + 65) * j, 135, 135, 30);
    }
  }
  //時間割アイコン
  stroke(0);
  fill(255,255,255);
  rect(75, 270, 105, 105);
  line(75, 270, 75 + (105.0/6.0), 270 + (105.0/6.0));
  for(int i = 0; i < 6; i++){
    line(75, 270 + (105.0/6.0) * i, 180, 270 + (105.0/6.0) * i);
    line(75 + (105.0/6.0) *i, 270, 75 + (105.0/6.0)*i, 375);
  }
  for(int i = 0; i < 5; i++){
    fill(124, 124, 200);
    rect(75 + (105.0/6.0) + (105.0/6.0)*i, 270, 105.0/6.0, 105.0/6.0);
    textSize(10);
    fill(0);
    text(i+1,80, 285 + (105.0/6.0)+17*i);
  }
   //calendarアイコン
  fill(255);
  rect(75, 470, 105, 105);
  fill(255, 0, 0);
  rect(75, 470, 105, 20);
  fill(255, 255, 0);
  ellipse(85, 480, 5, 5);
  ellipse(170, 480, 5, 5);
  textSize(45);
  fill(0);
  text(month() + "/" + day(), 80, 550);
//タイマーアイコン
  fill(255);
  ellipse(352.5, 322.5, 100, 100);
  fill(0);
  strokeWeight(5);
  line(352.5, 322.5, 352.5, 282.5);
//リストアイコン
  noStroke();
  fill(128, 0 , 0);
  rect(300, 470, 105, 105);
  fill(255);
  rect(315, 470, 75, 90);

}
