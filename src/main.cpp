#include <iostream>
#include "main.h"

using namespace std;

__int32_t DummyFunction(__int32_t x) {
    __int32_t r;
    r = x + 10;
    return(r);
}

#ifndef runtests_cpp    // Only include the main if we are not making a gtest build
int main() {
    cout << "Hello world!" << endl;
    cout << "-6 plus 10 equals " << DummyFunction(-6) << endl;
    return 0;
}
#endif
