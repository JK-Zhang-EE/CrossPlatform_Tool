#include <MyTool.h>

namespace MyTool
{
    static MyTool::MyMath my_math;

    int getMathAddResult(int x, int y)
    {
        return my_math.add(x, y);
    }

    int getMathSubResult(int x, int y)
    {
        return my_math.sub(x, y);
    }

}