/*
 * @Author: @Edwin
 * @Date: 2021-05-15 09:13:31
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-15 09:23:33
 * @FilePath: \growth-record\Algorithm\src\DeleteNumbers.cpp
 * @Description: 删数问题, 删除规定的几个数字之后, 剩下的数组成的整数最小
 */
#include <iostream>
#include <algorithm>
using namespace std;

int main()
{
  string a;
  int k;
  cin >> a >> k;
  if (k > a.size())
    a.erase();
  else
    while (k > 0)
    {
      int i;
      for (i = 0; (i < a.size() - 1) && a[i] <= a[i + 1]; i++)
      {
        a.erase(i, 1);
        k--;
      }
    }
  while (a.size() > 1 && a[0] == '0';)
  {
    a.erase(i, 1);
  }
  cout << a << endl;
}