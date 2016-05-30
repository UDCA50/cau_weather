package com.test.se.uitest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.EditText;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

public class LoginActivity extends Activity {
/*
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

    }

    public void loginAction(View v) {
        switch(v.getId()){
            case R.id.login_user:
                Intent intent1 = new Intent(this, MenuActivity_User.class);
                startActivity(intent1);
                break;

            case R.id.login_join:
                Intent intent3 = new Intent(this, JoinActivity.class);
                startActivity(intent3);
                break;
        }
    }*/

    EditText login_id, login_password;
    //TextView check;
    //Button checkBtn;
    ArrayList<String> array_id;
    //ArrayAdapter<String> adapter;
    //ListView list;
    private static final String SERVER_ADDRESS = "183.109.81.220/CW"; //서버 IP를 전역변수로..
    String uri = "http://183.109.81.220/CW/xml/result.xml"; //원하는 링크 접속
    String tagname, content; //xml의 태그와 내용을 담기 위한 변수

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        login_id = (EditText) findViewById(R.id.login_id);
        login_password = (EditText) findViewById(R.id.login_pass);
        //checkBtn = (Button) findViewById(R.id.checkBtn);
        //checkBtn.setOnClickListener(click);
        array_id = new ArrayList<String>();

    }

    Handler xmlHandler = new Handler() {
        public void handleMessage(Message msg) {
            if (msg.what == 0) {
                for (int i = 0; i < array_id.size(); i++) {
                    if (array_id.get(i).toString().equals(login_id.getText().toString())) {
                        break; //로그인이 성공하면 탈출
                    }
                }
                array_id.clear(); //저장된 id를 모두다 지워야 한다.
                login_id.setText(""); //편리하게 EditText를 리셋
                login_password.setText("");
            }
            //id_input.setText("");
            //password_input.setText("");
        }
    };
    public void loginAction(View v) {
        switch (v.getId()) {
            case R.id.checkBtn:
                if (login_id.getText().toString().equals("") || login_password.getText().toString().equals("")) {
                    //EditText가 비워있으면 null 오류가 뜨기 때문에 리턴해줘서 다시 입력하게 해야한다.
                    return;
                }
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            String ret = ""; //xml에서 받아온 TEXT를 임시로 받는 변수
                            String id = login_id.getText().toString(); //사용자가 입력한 id
                            String password = login_password.getText().toString(); //사용자가 입력한 password
                            String rss = SERVER_ADDRESS + "/xml/"; //서버의 rss 파일이 있는 위치 (xml파일)
                            String tagname = ""; //xml의 태그네밈을 위한 변수
                            XmlPullParserFactory factory = XmlPullParserFactory.newInstance(); //xmlPullparser를 위한 준비과정.
                            factory.setNamespaceAware(true); //xml의 네임페이스 허용
                            XmlPullParser xpp = factory.newPullParser();
                            URL url = new URL(SERVER_ADDRESS + "/xml/insert.php?" + "id=" + URLEncoder.encode(id, "UTF-8") + "&password=" + URLEncoder.encode(password, "UTF-8")); // &password="+URLEncoder.encode(password,"UTF-8")); <-혹시 짤린 부분 못보이실까봐..
                            url.openStream(); //서버에 있는 php파일에 id와 password를 인자로 입력하는 구문
                            URL server = new URL(rss + "insert.xml"); //php문이 실행이 되면 mysql과 연동되어 그 결과를 xml파일로 생성하는데 그 생성된 파일이 insert.xml 파일
                            InputStream is = server.openStream(); //xml파일연결
                            xpp.setInput(is, "UTF-8"); //엔코딩 방식 설정
                            int eventType = xpp.getEventType(); //이벤트 타입 얻어오기 예르들어 <start> 인지 </start> 인지 구분하기 위한.
                            while (eventType != XmlPullParser.END_DOCUMENT) { // xml이 끝날때까지 계속 돌린다.
                                if (eventType == XmlPullParser.START_TAG) {
                                    tagname = xpp.getName(); //태그를 받아온다.
                                } else if (eventType == XmlPullParser.TEXT) {
                                    if (tagname.equals("id")) {
                                        ret = xpp.getText();  //id 태그에 해당되는 TEXT를 임시로 저장
                                    }
                                } else if (eventType == XmlPullParser.END_TAG) {
                                    //태그가 닫히는 부분에서 임시 저장된 TEXT를 Array에 저장한다.
                                    tagname = xpp.getName();
                                    if (tagname.equals("id")) {
                                        array_id.add(ret);
                                    }
                                }
                                eventType = xpp.next();
                            }
                            //check.setText(array_id.get(0).toString());
                        }// try문 끝
                        catch (Exception e) {
                            e.getMessage();
                        } //catch문 끝
                        xmlHandler.sendEmptyMessage(0);
                    }
                }).start(); //start로 스레드 실행.break; //btn스위치 끝
        }//스위치 끝
    }
}

