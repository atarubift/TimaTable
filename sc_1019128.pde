import ddf.minim.*;
import de.bezier.data.*;

//ファイル関係の読み取り
XlsReader timeTable, category;
PrintWriter fileName;
Table file_CSV;
//音関係の準備
Minim timer_se;
AudioPlayer timer_se_player;
//画像の準備
PImage home_UI, timeTable_UI, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec, timerBack, timeTableBack, listBack, defaultPic, hanabi, seaven, star, settingPic;
//スケジューラーを管理する変数
int flow = 0;


void setup() {
  size(480, 640);
  //フォントの読み込み
  PFont font = createFont("Yu Gothic", 64, true);
  textFont(font);
  //画像の読み込み
  settingPic = loadImage("setting.png");
  defaultPic = loadImage("homeScreen.png");
  hanabi = loadImage("hanabiNight.png");
  seaven = loadImage("niji.png");
  star = loadImage("starNight.png");
  timeTable_UI = loadImage("time_UI.png");
  timerBack = loadImage("timer.back.png");
  timeTableBack = loadImage("timeTable.png");
  listBack = loadImage("1month-2.jpeg");
  homePic = defaultPic;
  Jan = loadImage("1month.png");
  Feb = loadImage("2month.png");
  Mar = loadImage("3month.png");
  Apr = loadImage("4month.png");
  May = loadImage("5month.png");
  Jun = loadImage("6month.png");
  Jul = loadImage("7month.png");
  Aug = loadImage("8month.png");
  Sep = loadImage("9month.png");
  Oct = loadImage("10month.png");
  Nov = loadImage("11month.png");
  Dec = loadImage("12month.png");
  //音の読み込み
  timer_se = new Minim(this);
  timer_se_player = timer_se.loadFile("Clock-Alarm03-01(Loop).mp3");
  //ファイルの読み込み
  fileName = createWriter("List.csv");
  file_CSV =loadTable("List.csv");
  timeTable = new XlsReader(this, "timeTable.xls");
  category = new XlsReader(this, "category.xls");

  for (int i = 0; i < 5; i++) {
    house_w [i] = category.getString(i, 0);
    taskList [i] = category.getString(i, 1);
    hobbyList [i] = category.getString(i, 2);
  }
}

void draw() {
  println(changePic);
  //流れの管理
  background(homePic);
  if (flow == 0) {
    home();
  } else if (flow == 1) {
    timetable();
  } else if (flow == 2) {
    calendar();
  } else if (flow == 3) {
    timer();
  } else if (flow == 4) {
    list();
  } else if (flow == 5) {
    setting();
  }
}
