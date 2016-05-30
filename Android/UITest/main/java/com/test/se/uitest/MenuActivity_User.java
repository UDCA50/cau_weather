package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class MenuActivity_User extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_user);

        Toast.makeText(this,"사용자로 로그인",Toast.LENGTH_SHORT).show();
    }
    public void onClick(View v) {
        switch(v.getId()){
            case R.id.menu_user_w:
                Intent intent1 = new Intent(this, MenuActivity_User_W.class);
                startActivity(intent1);
                break;
            case R.id.menu_user_m:
                Intent intent2 = new Intent(this, MenuActivity_User_M.class);
                startActivity(intent2);
                break;
        }
    }
}
