package joonyoung.sabjil;

/**
 * Created by mydre on 2016-04-06.
 */

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

public class Choose_bob extends AppCompatActivity{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.choose_bob);
        Button btn1 = (Button) findViewById(R.id.button11);
        Button btn2 = (Button) findViewById(R.id.button12);
        Button btn3 = (Button) findViewById(R.id.button13);
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
    }


}

