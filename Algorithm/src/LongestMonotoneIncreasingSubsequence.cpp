/*
 * @Author: @Edwin
 * @Date: 2021-05-14 19:02:42
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-14 19:10:22
 * @FilePath: \growth-record\Algorithm\src\LongestMonotoneIncreasingSubsequence.cpp
 * @Description: 最长单调递增子序列
 */
#include <iostream>
using namespace std;
int main()
{
  int len;
  cin >> len;
  int sequence[len];
  for (int i = 0; i < len; i++)
  {
    cin >> sequence[i];
  }

  int endw[len] = {1};
  for (int i = 0; i < len; i++)
  {
    for (int j = 0; j < len; j++)
    {
      if ((sequence[j] < sequence[i]) && (endw[j] + 1 > endw[i]))
      {
        endw[i] = endw[j] + 1;
      }
    }
  }

  int maxlen = 1;
  for (int i = 0; i < len; i++)
  {
    if (endw[i] > maxlen)
      maxlen = endw[i];
  }
  cout << maxlen << endl;
  return 0;
}
