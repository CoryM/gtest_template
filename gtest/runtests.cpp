#ifndef runtests_cpp
#define runtests_cpp ""

#include "../src/main.cpp"
#include "gtest/gtest.h"

using namespace std;

TEST(DummyFunctionTest, PositiveNos) {
    ASSERT_EQ(16, DummyFunction(6));
    ASSERT_EQ(1000, DummyFunction(990));
}

TEST(DummyFunctionTest, NegativeNos) {
    ASSERT_EQ(4, DummyFunction(-6));
    ASSERT_EQ(-980, DummyFunction(-990));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
#endif


