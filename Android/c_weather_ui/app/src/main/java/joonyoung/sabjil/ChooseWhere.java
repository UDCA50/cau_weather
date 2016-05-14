package joonyoung.sabjil;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class ChooseWhere extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_choose_where);
        Button btn1 = (Button) findViewById(R.id.button);
        Button btn2 = (Button) findViewById(R.id.button2);
        Button btn3 = (Button) findViewById(R.id.button3);
        Button btn4 = (Button) findViewById(R.id.button4);
        Button btn5 = (Button) findViewById(R.id.button5);
        Button btn6 = (Button) findViewById(R.id.button6);
        Button btn7 = (Button) findViewById(R.id.button7);
        Button btn8 = (Button) findViewById(R.id.button8);
        Button btn9 = (Button) findViewById(R.id.button9);
        View.OnClickListener Listener = new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                Intent intent;
                switch(v.getId()) {
                    case R.id.button:
                        intent = new Intent(getApplicationContext(), Choice.class);
                        startActivity(intent);
                    break;
                    case R.id.button2:
                        intent = new Intent(getApplicationContext(), Choose_bob.class);
                        startActivity(intent);
                    break;
                    case R.id.button3:

                        break;


                }
            }
        };
        btn1.setOnClickListener(Listener);
        btn2.setOnClickListener(Listener);
        btn3.setOnClickListener(Listener);
        btn4.setOnClickListener(Listener);
        btn5.setOnClickListener(Listener);
        btn6.setOnClickListener(Listener);
        btn7.setOnClickListener(Listener);
        btn8.setOnClickListener(Listener);

    }
}