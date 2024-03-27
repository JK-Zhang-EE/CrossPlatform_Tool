package com.example.test;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

import com.MyTool;

public class MainActivity extends AppCompatActivity {

    private TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textView = findViewById(R.id.textView_Label_1);
        String str = "version:" + MyTool.version() + "\n" +
                     "5+7=" + MyTool.getMathAddResult(5,7) + "\n" +
                     "5-7=" + MyTool.getMathSubResult(5, 7 );
        textView.setText(str);

    }
}