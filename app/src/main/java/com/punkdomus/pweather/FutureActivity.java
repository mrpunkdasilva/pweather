package com.punkdomus.pweather;

import android.content.Intent;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.punkdomus.pweather.Adapters.FutureAdapters;
import com.punkdomus.pweather.Domains.FutureDomain;

import java.util.ArrayList;

public class FutureActivity extends AppCompatActivity {
    private RecyclerView.Adapter adapterTommorow;
    public RecyclerView recyclerView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_future);

        initRecyclerView();
        setVariable();
    }

    private void setVariable() {
        ConstraintLayout backBtn = findViewById(R.id.backBtn);
        backBtn.setOnClickListener(v -> startActivity(new Intent(FutureActivity.this, MainActivity.class)));
    }

    private void initRecyclerView() {
        ArrayList<FutureDomain> items = new ArrayList<FutureDomain>();

        items.add(new FutureDomain("Sat", "storm", "Storm", 22, 15));
        items.add(new FutureDomain("Sun", "cloudy", "Cloudy", 24, 17));
        items.add(new FutureDomain("Mon", "windy", "Windy", 19, 12));
        items.add(new FutureDomain("Thue", "cloudy_sunny", "Cloudy Sunny", 26, 20));
        items.add(new FutureDomain("Wen", "sunny", "Sunny", 28, 21));
        items.add(new FutureDomain("Thu", "rain", "Rainy", 21, 16));

        recyclerView = findViewById(R.id.view2);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false));

        adapterTommorow = new FutureAdapters(items);
        recyclerView.setAdapter(adapterTommorow);
    }

}
