/*
 * @Author: @Edwin
 * @Date: 2021-05-13 19:36:59
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-13 19:56:01
 * @FilePath: \growth-record\Algorithm\src\MaxSubsequenceSum.cpp
 * @Description: 最大字段和算法 (蛮力算法)    时间复杂度O(n3)      思想：从序列首元素开始穷举所有可能的子序列。
 */
#include <iostream>
using namespace std;
int MaxSubsequenceSum(const int array[], int n)
{
  int tempSum, maxSum(0);
  for (int i = 0; i < n; i++)
  {
    for (int j = i; j < n; j++)
    {
      tempSum = 0;
      for (int k = i; k < j; k++)
        tempSum += array[k];
      if (tempSum > maxSum) //更新最大值
        maxSum = tempSum;
    }
  }
  return maxSum;
}
int main()
{
  const int array[] = {-20, 11, -4, 13, -5, -2};
  int maxSubSum = MaxSubsequenceSum(array, 6);
  cout << "The max subsequence sum of a is: " << maxSubSum << endl;
  system("pause");

  return 0;
}