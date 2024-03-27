package com;

public class MyTool {

    static {
        System.loadLibrary("MyTool");
    }

    public native static String version();

    public native static int getMathAddResult(int x, int y);

    public native static int getMathSubResult(int x, int y);
}