int l_flow =  0; //リストの流れを管理する。
int ca_flow = 0;//ジャンルを選択したときの流れを管理する
int jud_flow = 0;//タブを出しているときの判定を管理する
int disp_flow = 0; //テキストをリストに表示するするか、どうかを決める。
int textCount = 0; //リストに追加するテキストの数を数える
String [] house_w = new String [5];
String [] taskList = new String [5];
String [] hobbyList = new String [5];
boolean cook = false, washing = false, clean = false, shopping = false, 
  analys = false, com = false, literacy = false, info = false, 
  write = false, smash = false, programming = false, walking = false;
int cook_c, washing_c, clean_c, shopping_c, 
  analys_c, com_c, literacy_c, info_c, 
  write_c, smash_c, programming_c, walking_c;


void list() {
  background(listBack);
  //リスト画面の管理
  if (l_flow == 0) {
    showBar();
    showList();
  } else if (l_flow == 1) {
    showSelect();
    showBar();
  }
}

//リストの枠組みを表示
void showList() {
  fill(193, 189, 189);
  rect(420, 10, 45, 45);
  fill(255);
  rect(15, 80, 450, 540);
  fill(0);
  textSize(38);
  textAlign(BASELINE);
  text("+", 428, 42);
  for (int i = 0; i < 10; i++) {
    line(15, 125 + 55 * i, 465, 125 + 55 * i);
  }
  // 何かが選択されたときに実行
  if (disp_flow == 1) {
    drawText();
  }
}

//セレクト画面
void showSelect() {
  textAlign(CENTER);
  for (int i = 0; i < 3; i++) {
    fill(255);
    rect(30, 110 + 110 * i, 420, 60);
    triangle(390, 120 + 110 * i, 435, 120 + 110 * i, 825.0 / 2.0, 160 + 110 * i);
    fill(0);
    textSize(40);
    text(category.getString(0, i), 225, 150 + 110 * i);
  }
  //選ばれたカテゴリーによって実行
  if (ca_flow == 1) {
    for (int i = 1; i < 5; i++) {
      fill(190, 190, 190);
      rect(30, 110 + 60 * i, 420, 60);
      fill(0);
      text(category.getString(i, 0), 225, 150 + 60 * i);
    }
  } else if (ca_flow == 2) {
    for (int i = 1; i < 5; i++) {
      fill(190, 190, 190);
      rect(30, 220 + 60 * i, 420, 60);
      fill(0);
      text(category.getString(i, 1), 225, 270 + 60 * i);
    }
  } else if (ca_flow == 3) {
    for (int i = 1; i < 5; i++) {
      fill(190, 190, 190);
      rect(30, 330 + 60 * i, 420, 60);
      fill(0);
      text(category.getString(i, 2), 225, 380 + 60 * i);
    }
  }
}

//リストにテキストを表示する
void drawText() {
  if (cook == true) {
    textSize(30);
    text(category.getString(1, 0), 20, 55 + 55 * cook_c);
  }
  if (washing == true) {
    textSize(30);
    text(category.getString(2, 0), 20, 55 + 55 * washing_c);
  }
  if (clean == true) {
    textSize(30);
    text(category.getString(3, 0), 20, 55 + 55 * clean_c);
  }
  if (shopping == true) {
    textSize(30);
    text(category.getString(4, 0), 20, 55 + 55 * shopping_c);
  }
  if (analys == true) {
    textSize(30);
    text(category.getString(1, 1), 20, 55 + 55 * analys_c);
  }
  if (com == true) {
    textSize(30);
    text(category.getString(2, 1), 20, 55 + 55 * com_c);
  }
  if (literacy == true) {
    textSize(30);
    text(category.getString(3, 1), 20, 55 + 55 * literacy_c);
  }
  if (info == true) {
    textSize(30);
    text(category.getString(4, 1), 20, 55 + 55 * info_c);
  }
  if (write == true) {
    textSize(30);
    text(category.getString(1, 2), 20, 55 + 55 * write_c);
  }
  if (smash == true) {
    textSize(30);
    text(category.getString(2, 2), 20, 55 + 55 * smash_c);
  }
  if (programming == true) {
    textSize(30);
    text(category.getString(3, 2), 20, 55 + 55 * programming_c);
  }
  if (walking == true) {
    textSize(30);
    text(category.getString(4, 2), 20, 55 + 55 * walking_c);
  }
}
