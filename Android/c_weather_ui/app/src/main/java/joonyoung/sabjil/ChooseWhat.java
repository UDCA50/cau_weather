package joonyoung.sabjil;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

/**
 * Created by mydre on 2016-04-12.
 */
public class ChooseWhat extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_choose_what);
        TextView view1 = (TextView) findViewById(R.id.weather);
        TextView view2 = (TextView) findViewById(R.id.notice);
        View.OnClickListener Listener = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent;


                switch (v.getId()) {
                    case R.id.weather:
                        intent = new Intent(getApplicationContext(), ChooseWhere.class);
                        startActivity(intent);
                        break;
                    case R.id.notice:
                        // Notice page 이동
                        break;
                }
            }
        };
        view1.setOnClickListener(Listener);
        view2.setOnClickListener(Listener);

    }
}