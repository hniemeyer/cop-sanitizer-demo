#include <memory>
#include <vector>

struct T
{
    T() : v(100) {}
    std::vector<int> v;
};

//virtual dtor is missing: virtual ~Base() = default;
struct Base
{
};

struct Derived : public Base
{
    T t;
};

int main()
{
    Base *b = new Derived;

    delete b; // Boom!

    std::unique_ptr<Base> b1 = std::make_unique<Derived>();

    return 0;
}