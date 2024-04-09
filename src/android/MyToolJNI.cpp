#include <MyTool.h>
#include <jni.h>

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
