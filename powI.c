/* Use to generate assembly file */
int powI(int pow, int base) {
  int acc, p;
  for (acc=1,p=0; p < pow; p++) {
    acc = acc * base;
  }
  return acc;
} 