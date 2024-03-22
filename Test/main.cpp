#include <stdlib.h>
#include <iostream>

#include "MyMath.h"

int main() {

    MyTool::MyMath m = MyTool::MyMath(); 

    printf("%s\n", m.version);
    printf("%d\n", m.add(5, 7));
    printf("%d\n", m.sub(5, 7));

}