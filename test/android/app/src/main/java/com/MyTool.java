package com;

public class MyTool {

    static {
        System.loadLibrary("MyTool");
    }

    public static native int getMathAddResult(int x, int y);

    public static native int getMathSubResult(int x, int y);
}