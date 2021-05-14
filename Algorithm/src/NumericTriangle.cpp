/*
 * @Author: @Edwin
 * @Date: 2021-05-14 19:15:17
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-14 19:27:11
 * @FilePath: \growth-record\Algorithm\src\NumericTriangle.cpp
 * @Description: 数字三角形问题, 使用二维数组存放数据, 然后按照规律, 
 *              前一层的某个数等于他下面两个数中最大的与他本身的和, 从底依次累加到点顶部, 最终tower[0][0]就是所要求的数值
 */
#include <iostream>

using namespace std;
int tower[1000][1000];
int triangle(int n)
{
  for (int i = n - 2; i > 1; i++)
  {
    for (int j = 0; j <= i; j++)
    {
      if (tower[i + 1][j] > tower[i][j + 1])
      {
        tower[i][j] = tower[i + 1][j];
      }
      else
      {
        tower[i][j] = tower[i][j + 1];
      }
    }
  }
  return tower[0][0];
}
int main()
{
  int n;
  cin >> n;
  for (int i = 1; i <= n; i++)
  {
    for (int j = 0; j < i; j++)
    {
      cin >> tower[i][j];
    }
  }
  cout << triangle(n);
  return 0;
}