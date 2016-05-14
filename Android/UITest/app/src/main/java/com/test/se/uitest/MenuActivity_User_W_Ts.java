package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class MenuActivity_User_W_Ts extends Activity {

    TextView cno;
    TextView bno;
    TextView bname1;
    TextView bname2;

    ImageView cleft;
    ImageView cright;

    String[] cno_case;
    String[] b208 = new String[4];
    int c_control=0;

     @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_user_w_ts);

        Intent intent = getIntent();
        cno_case = intent.getStringArrayExtra("cno_case");
        String getBno = intent.getStringExtra("bno");
        String getBname1 = intent.getStringExtra("bname1");
        String getBname2 = intent.getStringExtra("bname2");

        bno = (TextView)findViewById(R.id.bno);
        bno.setText(getBno);

        bname1 = (TextView)findViewById(R.id.bname1);
        bname1.setText(getBname1);

        bname2 = (TextView)findViewById(R.id.bname2);
        bname2.setText(getBname2);

        cleft = (ImageView)findViewById(R.id.c_left);
        cleft.setVisibility(View.INVISIBLE);
        cright = (ImageView)findViewById(R.id.c_right);

        cno = (TextView)findViewById(R.id.user_w_ts_cno);
        cno.setTypeface(Typeface.createFromAsset(getAssets(), "GOTHIC.TTF"));
        cno.setText(cno_case[0]);

    }

    public void user_w_ts_Action(View v) {

        switch(v.getId()){
            case R.id.c_right:
                c_control++;
                check(c_control);
                cno.setText(cno_case[c_control]);
                System.out.println(c_control);
                break;

            case R.id.c_left:
                c_control--;
                check(c_control);
                cno.setText(cno_case[c_control]);
                break;

            case R.id.user_w_ts_cno:
                Intent intent1 = new Intent(this, MenuActivity_User_W_T.class);
                intent1.putExtra("cno",cno.getText().toString());
                startActivity(intent1);
                break;
        }
    }
    public void check(int c_control){
        switch(c_control){
            case 0:
                cleft.setVisibility(View.INVISIBLE);
                cright.setVisibility(View.VISIBLE);
                break;
            case 1:
                cleft.setVisibility(View.VISIBLE);
                cright.setVisibility(View.VISIBLE);
                break;
            case 2:
                cleft.setVisibility(View.VISIBLE);
                cright.setVisibility(View.VISIBLE);
                break;
            case 3:
                cleft.setVisibility(View.VISIBLE);
                cright.setVisibility(View.INVISIBLE);
                break;
        }
    }
}