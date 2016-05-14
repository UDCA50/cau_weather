package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MenuActivity_User_M extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_user_m);
    }

    public void msg_Action(View v) {
        switch(v.getId()){
            case R.id.m_write:
                Intent intent1 = new Intent(this, MenuActivity_User_M_W.class);
                startActivity(intent1);
                break;
            case R.id.m_modify:
                Intent intent2 = new Intent(this, MenuActivity_User_M_M.class);
                startActivity(intent2);
                break;
            case R.id.msg1:
                Intent intent3 = new Intent(this, MenuActivity_User_M_V.class);
                TextView sub1View = (TextView)findViewById(R.id.sub1);
                TextView writer1View = (TextView)findViewById(R.id.writer1);
                TextView date1View = (TextView)findViewById(R.id.date1);

                String sub1 = sub1View.getText().toString();
                String writer1 = writer1View.getText().toString();
                String date1 = date1View.getText().toString();

                intent3.putExtra("subject1",sub1);
                intent3.putExtra("writer1",writer1);
                intent3.putExtra("date1",date1);

                startActivity(intent3);
                break;
        }
    }
}
