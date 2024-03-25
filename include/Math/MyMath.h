#include <iostream>

#ifndef DLL_EXPORTS
#ifdef _WIN32
    #define DLL_EXPORTS __declspec(dllexport)
#else
    #define DLL_EXPORTS __attribute__((visibility("default")))
#endif
#endif

namespace MyTool
{
    class DLL_EXPORTS MyMath
    {
    public:

        int add(int x, int y);

        int sub(int x, int y);
    };

} 


