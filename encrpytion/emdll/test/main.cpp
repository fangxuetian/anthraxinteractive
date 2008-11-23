#include <cstdlib>
#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <string.h>
using namespace std;

int main(int argc, char *argv[])
{
    string lol;
    lol = "pie";
    lol = "lol" + lol;
    char loll[999] = lol.c_str;
    cout << "lol\n" << (int)strlen(loll);
    system("PAUSE");
    return EXIT_SUCCESS;
}
