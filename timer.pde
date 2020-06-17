//タイマの流れを管理
int t_flow = 0;
//ボタン
int start_buttonX = 50;
int start_buttonY = 500;
int show_button_w= 150;
int show_button_h = 50;
int reset_buttonX = 300;
int reset_buttonY = 500;

//時間のデータ
int [] s = new int [60];
int [] m = new int [60];
int [] h = new int [24];
int s_c = 0;
int m_c = 0;
int h_c = 0;
int s_count = 0;
int t_second = 0;
int m_count = 0;
int h_count = 0;
int t;
int ms = 0;

void timer() {
  background(timerBack);
 //タイマー画面の管理
  if (t_flow == 0) {
    showButton();
    countSet();
    showBar();
  } else if (t_flow == 1) {
    countDown();
    showButton();
    showBar();
  }
}

//各ボタンの配置
void showButton() {
  fill(255);
  rect(start_buttonX, start_buttonY, show_button_w, show_button_h);
  rect(reset_buttonX, reset_buttonY, show_button_w, show_button_h);
  textSize(30);
  fill(0);
  text("START", start_buttonX + 30, start_buttonY + 30);
  text("RESET", reset_buttonX + 30, reset_buttonY + 30);
  strokeWeight(1);
  stroke(0);
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 2; j++){
      fill(255, 128, 255);
      rect(115 + 100 * i, 200 + 130 * j, 50, 50);
      fill(255);
      triangle(140 + 100 * i, 210 + 160 * j, 125 + 100 * i, 240 + 100 * j, 155 + 100 * i, 240 + 100 * j);
    }
  }
}

//任意の値に時間を決める
void countSet() {
  for (int i = 0; i<s.length; i++) {
    s[i] = i;
  }
  for (int i = 0; i < m.length; i++) {
    m[i] = i;
  }
  for (int i = 0; i < h.length; i++) {
    h[i] = i;
  }
  textSize(50);
  fill(0);
  text(nf(s[s_c], 2), 315, 300);
  text(nf(m[m_c], 2) + ":", 215, 300);
  text(nf(h[h_c], 2) + ":", 115, 300);
  s_count = s[s_c];
  m_count = m[m_c];
  h_count = h[h_c];
}

//時間が進む
void countDown() {
  t = millis() - ms;
  t_second = s_count - t/1000;
  textSize(50);
  fill(0);
  text(nf(t_second, 2), 315, 300);
  text(nf(m_count, 2) + ":", 215, 300);
  text(nf(h_count, 2) + ":", 115, 300);
  if (t_second < 0 && m_count > 0) {
    ms = millis();
    s_count = 59;
    m_count -= 1;
  }
  if (t_second < 0 && m_count > 0 && h_count > 0) {
    ms = millis();
    s_count = 59;
    m_count = 59;
    h_count -= 1;
  }
  if (t_second == 0 && m_count == 0 && h_count == 0) {
    timer_se_player.play();
    timer_se_player.rewind();
    t_flow = 0;
    s_c = 0;
    m_c = 0;
    h_c = 0;
  }
}
