package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Toast.makeText(this,"터치하세요",Toast.LENGTH_SHORT).show();

        String test = "http://183.109.81.220:8080/SelectAllMember.php";
        URLConnector task = new URLConnector(test);
        task.start();

        try{
            task.join();
            System.out.println("waiting... for result");
        }
        catch(InterruptedException e){

        }


        String result = task.getResult();

        try{
            JSONObject root = new JSONObject(result);
            JSONArray ja = root.getJSONArray("result");
            String[] id = new String[ja.length()];
            for(int i = 0; i < ja.length();i++)
            {
                JSONObject jo = ja.getJSONObject(i);
                id[i] = jo.getString("m_id");
                System.out.println(id[i]);
            }
        }
        catch(JSONException e){
            e.printStackTrace();
        }


    }
    public void mainAction(View v) {
        switch(v.getId()){
            case R.id.start_btn:
                Intent intent1 = new Intent(this, LoginActivity.class);
                startActivity(intent1);
                break;

        }
    }


}
