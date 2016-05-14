package joonyoung.sabjil;

/**
 * Created by mydre on 2016-04-06.
 */
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Choice extends AppCompatActivity{

    public static final int REQUEST_CODE_ANOTHER = 1001;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.choice);
        Button btn1 = (Button) findViewById(R.id.button11);
        Button btn2 = (Button) findViewById(R.id.button12);
        Button btn3 = (Button) findViewById(R.id.button13);
        Button btn4 = (Button) findViewById(R.id.button14);
        Button btn5 = (Button) findViewById(R.id.button15);
        Button btn6 = (Button) findViewById(R.id.button16);
        Button btn7 = (Button) findViewById(R.id.button17);
        View.OnClickListener Listener = new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                Button btn = (Button) findViewById(v.getId());
                Intent intent = new Intent(getApplicationContext(), Result.class);
                intent.putExtra("value",btn.getText() );
                startActivity(intent);
            }
        };
        btn1.setOnClickListener(Listener);
        btn2.setOnClickListener(Listener);
        btn3.setOnClickListener(Listener);
        btn4.setOnClickListener(Listener);
        btn5.setOnClickListener(Listener);
        btn6.setOnClickListener(Listener);
        btn7.setOnClickListener(Listener);

    }


}

