package joonyoung.sabjil;

import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

/**
 * Created by mydre on 2016-04-12.
 */
public class SplashActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.splash);
        Log.e("왜 지랄이야", "씨발!!");
        Handler hd = new Handler();
        hd.postDelayed(new Runnable() {
            @Override
            public void run() {
                finish(); // 이미지 닫고 main으로 돌아감
            }
        }, 3000); // 3초 후 이미지를 닫음

    }
}

