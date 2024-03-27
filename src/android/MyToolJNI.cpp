#include <MyTool.h>
#include <jni.h>
#include <string>

extern "C"
JNIEXPORT jstring JNICALL 
Java_com_MyTool_version(JNIEnv *env, jobject  obj)
{
    return env->NewStringUTF(MyTool::version.c_str());
}

extern "C"
JNIEXPORT jint JNICALL 
Java_com_MyTool_getMathAddResult(JNIEnv *env, jobject  obj, jint x, jint y)
{
    return static_cast<jint>(MyTool::getMathAddResult(x, y));
}

extern "C"
JNIEXPORT jint JNICALL 
Java_com_MyTool_getMathSubResult(JNIEnv *env, jobject  obj, jint x, jint y)
{
    return static_cast<jint>(MyTool::getMathSubResult(x, y));
}