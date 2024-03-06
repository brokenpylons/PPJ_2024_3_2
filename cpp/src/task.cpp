#include <string>
#include <iostream>
#include <fstream>

// WARNING: This code has nothing to do with the task at hand. Feel free to delete it.

int main(int argc, char** argv)
{
    std::ifstream ifs(argv[1]);
    std::ofstream ofs(argv[2]);
    std::string input;
    ifs >> input;
    ofs << "ANSWER" << input;
}
