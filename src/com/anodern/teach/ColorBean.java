package com.anodern.teach;

import java.util.Random;

public class ColorBean {
    private static String[] colors = new String[]{"#e6e1cb", "#ccf7cb", "#c5e8ff", "#ffd0ea",
            "#ff9f95", "#e4c18a", "#6EEBCD", "#c6c5ff", };
    
    private static Random random = new Random();
    
    public static String getRandomColor(){
        return colors[random.nextInt(colors.length)];
    }
}
