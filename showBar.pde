//画面上部のバーを表示する
void showBar() {
  fill(237,150,18);
  rect(b_home_x, b_home_y, b_home_size, b_home_size);
  fill(255, 255, 0);
  triangle(20, 65/2.0, 50, 15, 50, 50);
  strokeWeight(1);
  stroke(0);
  line(0, 60, width, 60);
}
