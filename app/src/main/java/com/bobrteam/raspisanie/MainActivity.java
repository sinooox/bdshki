package com.bobrteam.raspisanie;

import android.os.Bundle;
import android.os.StrictMode;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
        showGroups();
        showRooms();
    }

    public void showGroups() {
        TextView view = findViewById(R.id.content);
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder().url("http://217.71.129.139:4864/groups").build();
        Call call = client.newCall(request);
        call.enqueue(new Callback() {
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    String json = response.body().string();
                    JSONArray array = new JSONArray(json);
                    ArrayList<String> groups = new ArrayList<String>();
                    Spinner spinner = findViewById(R.id.spinner);
                    for (int i = 0; i < array.length(); i++) {
                        JSONObject object = array.getJSONObject(i);
                        String text = object.getString("name");
                        groups.add(text);
                    }

                    // Создаем адаптер ArrayAdapter с помощью массива строк и стандартной разметки элемента spinner
                    ArrayAdapter<String> adapter = new ArrayAdapter<>(MainActivity.this, android.R.layout.simple_spinner_dropdown_item, groups);
                    // Определяем разметку для использования при выборе элемента
                    adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                    // Применяем адаптер к элементу spinner
                    MainActivity.this.runOnUiThread(new Runnable() {
                        public void run() {
                            spinner.setAdapter(adapter);
                        }
                    });
                } catch (JSONException e) {
                    view.post(new Runnable() {
                        public void run() {
                            view.append(e.getMessage());
                        }
                    });
                }
            }

            public void onFailure(Call call, IOException e) {
                view.post(new Runnable() {
                    public void run() {
                        view.append(e.getMessage());
                    }
                });
            }
        });
    }

    public void showRooms() {
        TextView view = findViewById(R.id.content);
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder().url("http://217.71.129.139:4864/rooms").build();
        Call call = client.newCall(request);
        call.enqueue(new Callback() {
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    String json = response.body().string();
                    JSONArray array = new JSONArray(json);
                    ArrayList<String> groups = new ArrayList<String>();
                    Spinner spinner = findViewById(R.id.spinner2);
                    for (int i = 0; i < array.length(); i++) {
                        JSONObject object = array.getJSONObject(i);
                        String text = object.getString("name");
                        groups.add(text);
                    }

                    // Создаем адаптер ArrayAdapter с помощью массива строк и стандартной разметки элемента spinner
                    ArrayAdapter<String> adapter = new ArrayAdapter<>(MainActivity.this, android.R.layout.simple_spinner_dropdown_item, groups);
                    // Определяем разметку для использования при выборе элемента
                    adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                    // Применяем адаптер к элементу spinner
                    MainActivity.this.runOnUiThread(new Runnable() {
                        public void run() {
                            spinner.setAdapter(adapter);
                        }
                    });
                } catch (JSONException e) {
                    view.post(new Runnable() {
                        public void run() {
                            view.append(e.getMessage());
                        }
                    });
                }
            }

            public void onFailure(Call call, IOException e) {
                view.post(new Runnable() {
                    public void run() {
                        view.append(e.getMessage());
                    }
                });
            }
        });
    }
}