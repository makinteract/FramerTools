package com.makinteract.framerplayer;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.commons.validator.routines.InetAddressValidator;

public class MainActivity extends AppCompatActivity {

    private TextView ipText, portText;
    private String ip;
    private int port;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ipText= (TextView) findViewById(R.id.ipText);
        portText= (TextView) findViewById(R.id.portText);


        findViewById(R.id.startButton).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                ip= ipText.getText().toString();
                port= 0;

                try {
                    port = Integer.parseInt(portText.getText().toString());
                } catch (Exception e){}

                if (!InetAddressValidator.getInstance().isValidInet4Address(ip))
                {
                    Toast.makeText(MainActivity.this, "Invalid IP address or PORT number", Toast.LENGTH_LONG).show();
                    return;
                }

                Intent i = new Intent(MainActivity.this, WebActivity.class);
                i.putExtra("ip", ip);
                i.putExtra("port", port);
                startActivityForResult(i,0);
            }
        });
    }
}
