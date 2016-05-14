package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

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

        }
    }
}
