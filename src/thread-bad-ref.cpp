#include <thread>
#include <string>
#include <iostream>
#include <map>

void change_map(int n, const std::string &name, std::map<std::string, int> &result_store)
{
    result_store[name] = n;
}

int main()
{
    std::map<std::string, int> result_dict;
    std::thread t1(change_map, 5, "blub", std::ref(result_dict));
    std::thread t2(change_map, 11, "bla", std::ref(result_dict));
    std::thread t3(change_map, 99, "blub", std::ref(result_dict));
    t1.join();
    t2.join();
    t3.join();
    for (const auto &[key, val] : result_dict)
    {
        std::cout << key << "="
                  << val << " \n";
    }
}