package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class LoginActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

    }

    public void loginAction(View v) {
        switch(v.getId()){
            case R.id.login_user:
                Intent intent1 = new Intent(this, MenuActivity_User.class);
                startActivity(intent1);
                break;

            case R.id.login_join:
                Intent intent3 = new Intent(this, JoinActivity.class);
                startActivity(intent3);
                break;
        }
    }
}

