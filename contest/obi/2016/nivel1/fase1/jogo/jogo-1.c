#include <stdio.h>

int main(int argc, char const *argv[]) {
  int p, d1, d2, result;

  scanf("%d %d %d", &p, &d1, &d2);

  if ((d1 + d2) % 2 == p)
    result = 0;
  else
    result = 1;

  printf("%d\n", result);

  return 0;
}
