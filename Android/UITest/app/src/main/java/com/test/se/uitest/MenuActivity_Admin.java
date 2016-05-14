package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class MenuActivity_Admin extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_admin);

        Toast.makeText(this,"관리자로 로그인",Toast.LENGTH_SHORT).show();
    }
    public void onClick(View v) {
        switch(v.getId()){
            case R.id.menu_admin_s:
                Intent intent1 = new Intent(this, MenuActivity_Admin_S.class);
                startActivity(intent1);
                break;
            case R.id.menu_admin_l:
                Intent intent2 = new Intent(this, MenuActivity_Admin_L.class);
                startActivity(intent2);
                break;
        }
    }
}
