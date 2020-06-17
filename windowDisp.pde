void mouseClicked() {
  //画面遷移
  if (flow == 0) {
    if (mouseX > button_x && mouseX < button_x + button_size) {
      if ( mouseY > button_y && mouseY < button_y + button_size) {
        flow = 1;
      }
    }
    if (mouseX > button_x && mouseX < button_x + button_size) {
      if (mouseY >button_y + button_size +  interval_y && mouseY < button_y + interval_y + button_size * 2) {
        flow = 2;
      }
    }
    if (mouseX > button_x + button_size + interval_x && mouseX < button_x + interval_x + button_size * 2) {
      if ( mouseY > button_y && mouseY < button_y + button_size) {
        flow = 3;
      }
    }
    if (mouseX > button_x + button_size + interval_x && mouseX < button_x + interval_x + button_size * 2) {
      if (mouseY >button_y + button_size +  interval_y && mouseY < button_y + interval_y + button_size * 2) {
        flow = 4;
      }
    }
    if (mouseX > 272 && mouseX < 437) {
      if (mouseY > 30 && mouseY < 197) {
        flow = 5;
      }
    }
  }

  if (mouseX > b_home_x && mouseX < b_home_x + b_home_size) {
    if (mouseY > b_home_y && mouseY < b_home_y + b_home_size) {
      if (flow == 1 || flow == 2 || flow == 3 || flow == 4 || flow == 5) {
        flow = 0;
      }
    }
  }
  //カレンダー
  if (flow == 2) {
    if (mouseY > 100 && mouseY < 130) {
      if (mouseX > 90 && mouseX < 120) {
        month -= 1;
      } else if ( mouseX > 360 && mouseX < 390) {
        month += 1;
      }
    }
    if (month > 12) {
      month = 1;
      year += 1;
    } else if (month < 1) {
      month = 12;
      year -= 1;
    }
  }

  //タイマー
  if (flow == 3) {
    if (t_flow == 0) {
      if (mouseY > 200 && mouseY < 250) {
        if (mouseX > 115 && mouseX < 165) {
          h_c ++;
        } else if (mouseX > 215 && mouseX < 265) {
          m_c ++;
        } else if (mouseX > 315 && mouseX < 365) {
          s_c ++;
        }
      }

      if (mouseY > 330 && mouseY < 380) {
        if (mouseX > 115 && mouseX < 165) {
          h_c --;
        } else if (mouseX > 215 && mouseX < 265) {
          m_c --;
        } else if (mouseX > 315 && mouseX < 365) {
          s_c --;
        }
      }
      if (h_c < 0) {
        h_c = h.length - 1;
      } else if (h_c >= h.length) {
        h_c = 0;
      }
      if (m_c < 0) {
        m_c = m.length - 1;
      } else if (m_c >= m.length) {
        m_c = 0;
      }
      if (s_c < 0) {
        s_c = s.length - 1;
      } else if (s_c >= s.length) {
        s_c = 0;
      }
    }


    if (t_flow == 0) {
      if (mouseX > start_buttonX && mouseX < start_buttonX + show_button_w) {
        if (mouseY > start_buttonY && mouseY < start_buttonY + show_button_h) {
          t_flow = 1;
          ms = millis();
        }
      }
    }

    if (t_flow == 1) {
      if (mouseX > reset_buttonX && mouseX < reset_buttonX + show_button_w) {
        if (mouseY > reset_buttonY && mouseY < reset_buttonY + show_button_h) {
          t_flow = 0;
          ms = millis();
        }
      }
    }
  }

  //リスト
  if (flow == 4) {
    if (l_flow == 0) {
      if (mouseX > 420 && mouseX < 465) {
        if (mouseY > 10 && mouseY < 55) {
          l_flow = 1;
        }
      }
    }
    if (l_flow == 1) {
      if (mouseX > b_home_x && mouseX < b_home_x + b_home_size) {
        if (mouseY > b_home_y && mouseY < b_home_y + b_home_size) {
          l_flow = 0;
          ca_flow = 0;
          jud_flow = 0;
        }
      }
      if (jud_flow == 0) {
        if (mouseX > 30 && mouseX < 450) {
          if (mouseY > 110 && mouseY < 170) {
            ca_flow = 1;
            jud_flow = 1;
          } else if (mouseY > 220 && mouseY < 280) {
            ca_flow = 2;
            jud_flow = 1;
          } else if ( mouseX > 330 && mouseY < 390) {
            ca_flow = 3;
            jud_flow = 1;
          }
        }
      }

      if (ca_flow == 1) {
        if (mouseX > 30 && mouseX < 450) {
          if (mouseY > 170 && mouseY < 230) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            cook_c = textCount;
            cook =true;
            fileName.println(house_w[1]);
            fileName.flush();
          }
          if (mouseY > 230 && mouseY < 290) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            washing_c = textCount;
            washing = true;
            fileName.println(house_w[2]);
            fileName.flush();
          }
          if (mouseY > 290 && mouseY < 350) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            clean_c = textCount;
            clean = true;
            fileName.println(house_w[3]);
            fileName.flush();
          }
          if (mouseY > 350 && mouseY < 410) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            shopping_c = textCount;
            shopping = true;
            fileName.println(house_w[4]);
            fileName.flush();
          }
        }
        if (mouseX < 30 || mouseX > 450 || mouseY < 110 || mouseY > 410) {
          ca_flow = 0;
          jud_flow = 0;
        }
      }
      if (ca_flow == 2) {
        if (mouseX > 30 && mouseX <450) {
          if (mouseY > 280 && mouseY < 340) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            analys_c = textCount;
            analys =true;
            fileName.println(taskList[1]);
            fileName.flush();
          }
          if (mouseY > 340 && mouseY < 400) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            com_c = textCount;
            com = true;
            fileName.println(taskList[2]);
            fileName.flush();
          }
          if (mouseY > 400 && mouseY < 460) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            literacy_c = textCount;
            literacy = true;
            fileName.println(taskList[3]);
            fileName.flush();
          }
          if (mouseY > 460 && mouseY < 520) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            info_c = textCount;
            info = true;
            fileName.println(taskList[4]);
            fileName.flush();
          }
        }
        if (mouseX < 30 || mouseX > 450 || mouseY < 210 || mouseY > 520) {
          ca_flow = 0;
          jud_flow = 0;
        }
      }
      if (ca_flow == 3) {
        if (mouseX > 30 && mouseX <450) {
          if (mouseY > 390 && mouseY < 450) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            write_c = textCount;
            write =true;
            fileName.println(hobbyList[1]);
            fileName.flush();
          }
          if (mouseY > 450 && mouseY < 510) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            smash_c = textCount;
            smash = true;
            fileName.println(hobbyList[2]);
            fileName.flush();
          }
          if (mouseY > 510 && mouseY < 570) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            programming_c = textCount;
            programming = true;
            fileName.println(hobbyList[3]);
            fileName.flush();
          }
          if (mouseY > 570 && mouseY < 620) {
            l_flow = 0;
            ca_flow = 0;
            jud_flow = 0;
            disp_flow = 1;
            textCount +=1;
            walking_c = textCount;
            walking = true;
            fileName.println(hobbyList[4]);
            fileName.flush();
          }
        }
        if (mouseX < 30 || mouseX > 450 || mouseY < 310 || mouseY > 630) {
          ca_flow = 0;
          jud_flow = 0;
        }
      }
    }
  }
  if (flow == 5) {
    if (mouseX > 50 && mouseX < 200) {
      if (mouseY > 90 && mouseY < 290) {
        changePic = 2;
        flow = 0;
      } else if (mouseY >360 && mouseY < 560) {
        changePic = 0;
        flow = 0;
      }
    }
    if (mouseX > 280 && mouseX < 430) {
      if (mouseY > 90 && mouseY < 290) {
        changePic = 1;
        flow = 0;
      } else if (mouseY > 360 && mouseY < 290) {
        changePic = 3;
        flow = 0;
      }
    }
  }
}
