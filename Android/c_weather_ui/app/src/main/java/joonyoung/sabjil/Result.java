package joonyoung.sabjil;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;


public class Result extends AppCompatActivity{
    @Override
    protected void onCreate(Bundle savedInstanceState){
    super.onCreate(savedInstanceState);
        setContentView(R.layout.result);
        Intent intent = getIntent();
        String data = intent.getStringExtra("value");
        TextView view1 = (TextView) findViewById(R.id.name);
        view1.setText(data);


    }
}

