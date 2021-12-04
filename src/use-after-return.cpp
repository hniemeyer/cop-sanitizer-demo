#include <vector>

std::vector<int>& create_vector() {
    std::vector<int> my_vec{1,2,3};

    return my_vec;
}

int main() {
    auto res = create_vector();
}