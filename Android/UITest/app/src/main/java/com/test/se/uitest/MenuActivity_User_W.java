package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;

public class MenuActivity_User_W extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_user_w);
    }
    public void user_w_Action(View v) {
        Intent intent = new Intent(this, MenuActivity_User_W_Ts.class);
        String[] cno_case = new String[4];

        switch (v.getId()) {
            case R.id.user_w_207:
                cno_case[0] = "106";
                cno_case[1] = "306";
                cno_case[2] = "307";
                cno_case[3] = "323";
                intent.putExtra("bno", "207");
                intent.putExtra("bname1", "First");
                intent.putExtra("bname2", "Engineering Building");
                break;

            case R.id.user_w_208:
                cno_case[0] = "101";
                cno_case[1] = "414";
                cno_case[2] = "514";
                cno_case[3] = "515";
                intent.putExtra("bno", "208");
                intent.putExtra("bname1", "Secondary");
                intent.putExtra("bname2", "Engineering Building");
                break;

            case R.id.user_w_lib:
                cno_case[0] = "#1F";
                cno_case[1] = "#2F";
                cno_case[2] = "#3F";
                cno_case[3] = "#4F";
                intent.putExtra("bno", "LIB");
                intent.putExtra("bname1", "Chung-Ang Univ.");
                intent.putExtra("bname2", "Central Library");
                break;

            case R.id.user_w_107:
                cno_case[0] = "106";
                cno_case[1] = "107";
                cno_case[2] = "108";
                cno_case[3] = "109";
                intent.putExtra("bno", "107");
                intent.putExtra("bname1", "Liberal Art");
                intent.putExtra("bname2", "Building");
                break;

            case R.id.user_w_308:
                cno_case[0] = "#1F";
                cno_case[1] = "#2F";
                cno_case[2] = "#3F";
                cno_case[3] = "#4F";
                intent.putExtra("bno", "308");
                intent.putExtra("bname1", "Dormitory");
                intent.putExtra("bname2", "BlueMir Hall");
                break;
        }

        intent.putExtra("cno_case", cno_case);
        startActivity(intent);
    }

}