package joonyoung.sabjil;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;

/**
 * Created by mydre on 2016-05-02.
 */
public class MainActivity extends AppCompatActivity {
    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
//        startActivity(new Intent(this, SplashActivity.class));

        setContentView(R.layout.main);
        Log.d("Check","Check");

        Button B1 = (Button) findViewById(R.id.button19);
        Button B2 = (Button) findViewById(R.id.button20);
        Button B3 = (Button) findViewById(R.id.login);

        View.OnClickListener Listener = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            Intent intent;
                switch(v.getId()){
                    case R.id.button19:
                        break;
                    case R.id.button20:
                        // 아이디/비번찾기 이동
                        break;
                    case R.id.login:
                        //아이디 및 비밀번호 유효성 체크 이후
                        intent = new Intent(getApplicationContext(),ChooseWhat.class);
                        startActivity(intent);
                        break;
                }
            }
        };
        B1.setOnClickListener(Listener);
        B2.setOnClickListener(Listener);
        B3.setOnClickListener(Listener);

    }
}
