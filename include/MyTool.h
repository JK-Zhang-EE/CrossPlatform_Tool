#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <vector>
#ifndef DLL_EXPORTS
#ifdef _WIN32
    #define DLL_EXPORTS __declspec(dllexport)
#else
    #define DLL_EXPORTS __attribute__((visibility("default")))
#endif
#endif

namespace MyTool
{

    static const std::string version = "1.0.0";
    //std::string version = "1";
    //std::vector<int> s;

    int DLL_EXPORTS getMathAddResult(int x, int y);

    int DLL_EXPORTS getMathSubResult(int x, int y);

}


