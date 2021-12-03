#include <iostream>
#include <array>

int main()
{
    std::array<int, 100> x;
    std::cout << "The value is: " << x[1] << " \n";
    return x[5];
}