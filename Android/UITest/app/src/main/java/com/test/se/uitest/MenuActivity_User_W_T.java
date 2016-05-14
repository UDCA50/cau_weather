package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.media.Image;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.Calendar;

public class MenuActivity_User_W_T extends Activity {

    int[] imgData = new int[3];
    Calendar cal = Calendar.getInstance();
    int month = cal.get(Calendar.MONTH)+1;

    ImageView smileImg;
    TextView temp;
    TextView hum;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_user_w_t);

        temp = (TextView)findViewById(R.id.temperature);
        hum = (TextView)findViewById(R.id.humidity);

        imgData[0]=R.drawable.user_w_t_good;
        imgData[1]=R.drawable.user_w_t_normal;
        imgData[2]=R.drawable.user_w_t_bad;

        int temperature = Integer.parseInt(temp.getText().toString());
        int humidity = Integer.parseInt(hum.getText().toString());

        smileImg = (ImageView)findViewById(R.id.smile);     //스마일변경
        int tempScore = 0;
        int humScore = 0;
        int totalScore = 0;

        if(month>=3&&month<=5 || month>=9&&month<=11) { //봄,가을
            if(temperature>=19&&temperature<=23){
                tempScore = 2;
            }else if((temperature>=24&&temperature<=26) || (temperature>=16&&temperature<=18)){
                tempScore = 1;
            }else{
                tempScore = 0;
            }
        }else if(month>=6&&month<=8) {//여름
            if(temperature>=19&&temperature<=23){
                tempScore = 2;
            }else if((temperature>=24&&temperature<=26) || (temperature>=16&&temperature<=18)){
                tempScore = 1;
            }else{
                tempScore = 0;
            }
        }else{//겨울
            if(temperature>=19&&temperature<=23){
                tempScore = 2;
            }else if((temperature>=24&&temperature<=26) || (temperature>=16&&temperature<=18)){
                tempScore = 1;
            }else{
                tempScore = 0;
            }
        }

        if(month>=3&&month<=5 || month>=9&&month<=11) { //봄,가을
            if(humidity>=45&&humidity<=55){
                humScore = 2;
            }else if((temperature>=40&&temperature<=44) || (temperature>=56&&temperature<=59)){
                humScore = 1;
            }else{
                humScore = 0;
            }
        }else if(month>=6&&month<=8) {//여름
            if(humidity>=55&&humidity<=65){
                humScore = 2;
            }else if((humidity>=50&&humidity<=54) || (humidity>=66&&humidity<=69)){
                humScore = 1;
            }else{
                humScore = 0;
            }
        }else{//겨울
            if(humidity>=19&&humidity<=23){
                humScore = 2;
            }else if((humidity>=24&&humidity<=26) || (humidity>=16&&humidity<=18)){
                humScore = 1;
            }else{
                humScore = 0;
            }
        }

        totalScore = tempScore + humScore;

        System.out.println("온도점수:"+tempScore);
        System.out.println("습도점수:"+humScore);
        System.out.println("합계점수:"+totalScore);
        switch(totalScore){
            case 0:
                smileImg.setImageResource(imgData[2]);
                break;
            case 1:
                smileImg.setImageResource(imgData[2]);
                break;
            case 2:
                smileImg.setImageResource(imgData[1]);
                break;
            case 3:
                smileImg.setImageResource(imgData[0]);
                break;
            case 4:
                smileImg.setImageResource(imgData[0]);
                break;
        }

        Intent intent = getIntent();
        String getCno = intent.getStringExtra("cno");

        TextView cnoTxt = (TextView)findViewById(R.id.user_w_t_cno);
        cnoTxt.setText(getCno);
    }

}