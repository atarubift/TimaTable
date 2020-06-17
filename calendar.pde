int year = year();
int month = month();
int day;
PImage backPic;


void calendar() {
  //月ごとに背景を変える
  if (month == 1) {
    backPic = Jan;
  } else if (month == 2) {
    backPic = Feb;
  } else if (month == 3) {
    backPic = Mar;
  } else if (month == 4) {
    backPic = Apr;
  } else if (month == 5) {
    backPic = May;
  } else if (month == 6) {
    backPic = Jun;
  } else if (month == 7) {
    backPic = Jul;
  } else if (month == 8) {
    backPic = Aug;
  } else if (month == 9) {
    backPic = Sep;
  } else if (month == 10) {
    backPic = Aug;
  } else if (month == 11) {
    backPic = Nov;
  } else if (month == 12) {
    backPic = Dec;
  }
  background(backPic);
  showBar();
//月の移動
  rect(90, 100, 30, 30);
  rect(360, 100, 30, 30);
  //年月の表示
  fill(0);
  textSize(50);
  text(month, 215, 110);
  textSize(25);
  text(year, 15, 90);
//偶奇を分けて配置
  for (int i = 1; i < lengthOfMonth(year, month) + 1; i++) {
    day = i;
    if (day % 2 != 0) {
      fill(0);
      textSize(20);
      text(str(day), 110, 130 + 15 * (i + 1));
    } else if (day % 2 == 0) {
      fill(0);
      textSize(20);
      text(str(day), 350, 130 + 15 * i);
    }
    //今日の日付を赤くする
    if (day == day() && month == month() && year == year()) {
      if ( day % 2 != 0) {
        fill(255, 0, 0);
        textSize(20);
        text(str(day), 110, 130 + 15 * (i + 1));
      } else if (day % 2 == 0) {
        fill(255, 0, 0);
        textSize(20);
        text(str(day), 350, 130 + 15 * i);
      }
    }
  }
}

//日数
int lengthOfMonth(int y, int m) {
  if ( m == 2) {
    if (isLeapYear(y)) {
      return 29;
    }
    return 28;
  }
  if ( 8 <= m) {
    m++;
  }
  return 30 + (m % 2);
}

//うるう年の判定
boolean isLeapYear(int y) {
  return (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0);
}
