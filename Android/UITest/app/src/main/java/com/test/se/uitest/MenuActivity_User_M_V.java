package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class MenuActivity_User_M_V extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_user_m_v);
        Intent intent = getIntent();
        String subject = intent.getStringExtra("subject1");
        String writer = intent.getStringExtra("writer1");
        String date = intent.getStringExtra("date1");

        TextView subjectView = (TextView)findViewById(R.id.msgv_subject);
        subjectView.setText(subject);
    }
}