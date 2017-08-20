#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
  int p, d1, d2, result;

  cin >> p >> d1 >> d2;

  if ((d1 + d2) % 2 == p)
    result = 0;
  else
    result = 1;

  cout << result << endl;

  return 0;
}
