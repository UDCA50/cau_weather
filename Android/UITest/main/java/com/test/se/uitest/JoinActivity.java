package com.test.se.uitest;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;


public class JoinActivity extends Activity {
    private final String url = "http://165.194.33.126";
    EditText edtid;
    EditText edtpass;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_join);

        Spinner joinCat = (Spinner) findViewById(R.id.join_cat);
        ArrayAdapter joinCatAdapter = ArrayAdapter.createFromResource(this, R.array.join_cat, android.R.layout.simple_spinner_item);
        joinCatAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

        joinCat.setAdapter(joinCatAdapter);

        Spinner joinGender = (Spinner) findViewById(R.id.join_gender);
        ArrayAdapter joinGenderAdapter = ArrayAdapter.createFromResource(this, R.array.join_gender, android.R.layout.simple_spinner_item);
        joinGenderAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        joinGender.setAdapter(joinGenderAdapter);
        /////////////////////////////////////////////////////////////////////////////////////

        edtid = (EditText) findViewById(R.id.join_id);
        edtpass = (EditText) findViewById(R.id.join_pass);
    }

    private String getXmlData(String filename, String str) { //태그값 하나를 받아오기위한 String형 함수
        String rss = url + "/";
        String ret = "";

        try { //XML 파싱을 위한 과정
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            factory.setNamespaceAware(true);
            XmlPullParser xpp = factory.newPullParser();
            URL server = new URL(rss + filename);
            InputStream is = server.openStream();
            xpp.setInput(is, "UTF-8");

            int eventType = xpp.getEventType();

            while (eventType != XmlPullParser.END_DOCUMENT) {
                if (eventType == XmlPullParser.START_TAG) {
                    if (xpp.getName().equals(str)) { //태그 이름이 str 인자값과 같은 경우
                        ret = xpp.nextText();
                    }
                }
                eventType = xpp.next();
            }
        } catch (Exception e) {
            Log.e("Error", e.getMessage());
        }

        return ret;
    }


    public void join_aggr_Action(View v) {

        switch (v.getId()) {
            case R.id.join_agreementView:
                Intent intent1 = new Intent(this, JoinActivity_A.class);
                startActivity(intent1);
                break;
            case R.id.join_btn:

                if (edtid.getText().toString().equals("") ||
                        edtpass.getText().toString().equals("")) { //id, pass 둘 중 하나라도 입력안되면
                    Toast.makeText(JoinActivity.this,
                            "id 혹은 password를 입력하세요", Toast.LENGTH_SHORT).show();
                    return;
                }


                String id = edtid.getText().toString();
                String pass = edtpass.getText().toString();

                try {
                    URL temp = new URL(url +"/test_Insert.php?"
                            + "id=" + URLEncoder.encode(id, "UTF-8")
                            + "&pass=" + URLEncoder.encode(pass, "UTF-8")); //변수값을 UTF-8로 인코딩하기 위해 URLEncoder를 이용하여 인코딩함
                    temp.openStream(); //서버의 DB에 입력하기 위해 웹서버의 insert.php파일에 입력된 id와 pass을 넘김

                    String result = getXmlData("insertresult.xml", "result"); //입력 성공여부

                    if (result.equals("1")) { //result 태그값이 1일때 성공
                        Toast.makeText(JoinActivity.this,
                                "회원가입 성공", Toast.LENGTH_SHORT).show();

                        edtid.setText("");
                        edtpass.setText("");
                    } else //result 태그값이 1이 아닐때 실패
                        Toast.makeText(JoinActivity.this,
                                "회원가입 실패", Toast.LENGTH_SHORT).show();
                } catch (Exception e) {
                    Log.e("Error", e.getMessage());
                }

                break;
        }
    }

    public void join_Complete(View v) {


    }
}

