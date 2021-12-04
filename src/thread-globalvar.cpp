#include <thread>

int global = 0;

void change_global(int n) {
    global = n;
}

int main() {
    std::thread t1(change_global, 5);
    std::thread t2(change_global, 11);
    t1.join();
    t2.join();
}