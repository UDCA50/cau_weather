package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

public class JoinActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_join);

        Spinner joinCat = (Spinner)findViewById(R.id.join_cat);
        ArrayAdapter joinCatAdapter = ArrayAdapter.createFromResource(this, R.array.join_cat, android.R.layout.simple_spinner_item);
        joinCatAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        joinCat.setAdapter(joinCatAdapter);

        Spinner joinGender = (Spinner)findViewById(R.id.join_gender);
        ArrayAdapter joinGenderAdapter = ArrayAdapter.createFromResource(this, R.array.join_gender, android.R.layout.simple_spinner_item);
        joinGenderAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        joinGender.setAdapter(joinGenderAdapter);


        /////////////////////////////////////////////////////////////////////////////////////
        EditText input_id = (EditText)findViewById(R.id.join_id);
        String m_id = input_id.getText().toString();

    }
    public void join_aggr_Action(View v) {
        switch(v.getId()){
            case R.id.join_agreementView:
                Intent intent1 = new Intent(this, JoinActivity_A.class);
                startActivity(intent1);
                break;
        }
    }
}

