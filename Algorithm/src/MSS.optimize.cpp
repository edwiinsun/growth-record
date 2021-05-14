/*
 * @Author: @Edwin
 * @Date: 2021-05-13 19:36:59
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-13 19:57:26
 * @FilePath: \growth-record\Algorithm\src\MSS.optimize.cpp
 * @Description: 最大字段和算法 (优化之后的蛮力算法)    时间复杂度O(n2)     思想：直接在划定子序列时累加元素值，减少一层循环。
 */
#include <iostream>
using namespace std;
int MaxSubsequenceSum(const int array[], int n)
{
  int tempSum, maxSum(0);
  for (int i = 0; i < n; i++)
  {
    tempSum = 0;

    for (int j = i; j < n; j++)
    {
      tempSum += array[j];
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