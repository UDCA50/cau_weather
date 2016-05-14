package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MenuActivity_User_W_T extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_user_w_t);

        Intent intent = getIntent();
        String getCno = intent.getStringExtra("cno");

        TextView cnoTxt = (TextView)findViewById(R.id.user_w_t_cno);
        cnoTxt.setText(getCno);
    }

}