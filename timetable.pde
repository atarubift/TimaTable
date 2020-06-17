int timeTable_x = 15;
int timeTable_y = 75;

void timetable() {
  background(timeTableBack);
  showBar();
  fill(124,124,124, 50);
  rect(15, 100, 445, 500);

  for (int i = 1; i < 6; i++) {
    for (int j = 0; j < 6; j++) {
      fill(0);
      textSize(15);
      text(timeTable.getString(j, i), 80*i, 130+80*j);
      text(timeTable.getInt(i, 0), 35, 130 + 80*  i);
    }
  }
}
