#include <iostream>

#include "MyTool.h"

int main() 
{
    printf("=== Start Testing ===\n");
    printf("%s\n", MyTool::version.c_str());
    printf("%d\n", MyTool::getMathAddResult(5, 7));
    printf("%d\n", MyTool::getMathSubResult(5, 7));
}