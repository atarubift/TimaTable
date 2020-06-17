float clock_dia = 170;

void clock() {
  float s = second();
  float m = minute()+s/60;
  float h = hour() % 12+m/60;

  fill(255);
  strokeWeight(1);
  stroke(0);
  ellipse(115, 115, clock_dia, clock_dia);
  translate(115, 115);

  //秒針
  pushMatrix();
  rotate(radians(s*(360/60)));
  strokeWeight(1);
  stroke(0);
  line(0, 0, 0, -clock_dia/2 + 10);
  popMatrix();

  //分針
  pushMatrix();
  rotate(radians(m*(360/60)));
  strokeWeight(2);
  stroke(0);
  line(0, 0, 0, 15 - clock_dia/2);
  popMatrix();

  //時針
  pushMatrix();
  rotate(radians(h*(360/12)));
  strokeWeight(3);
  stroke(0);
  line(0, 0, 0, 5 - clock_dia/3);
  popMatrix();

  //時刻を表す丸
  strokeWeight(1);
  //秒
  for (int i = 0; i < 60; i++) {
    pushMatrix();
    rotate(radians(i * 6));
    fill(0);
    ellipse(0, 80, 1, 1);
    popMatrix();
  }
  //大きいアレ
  for (int i = 0; i < 12; i++) {
    pushMatrix();
    rotate(radians(i * 30));
    fill(0);
    ellipse(0, 79, 4, 4);
    popMatrix();

    //中心の留め具
    fill(255);
    ellipse(0, 0, 7, 7);
  }
}
