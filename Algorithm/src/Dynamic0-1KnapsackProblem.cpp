/*
 * @Author: @Edwin
 * @Date: 2021-05-14 14:38:51
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-14 15:19:40
 * @FilePath: \growth-record\Algorithm\src\Dynamic0-1KnapsackProblem.cpp
 * @Description: 0-1背包问题动态规划解决方法
 */
/*
	 * 利用动态规划算法求解0-1背包问题的状态转移方程及初始值如下：
	 * 
	 * m[0][j] = 0
	 * m[i][0] = 0
	 * 
	 * if(w[1] <= j)
	 *     m[1][j] = v[1]
	 * if(w[1] > j)
	 *     m[1][j] = 0
	 *     
	 * if(w[i] > j)
	 *     m[i][j] = m[i-1][j]
	 * if(w[i] <= j)
	 *     Max{m[i-1][j],m[i-1][j-w[i]]+v[i]}
	 */
#include <iostream>
using namespace std;
void Knapsack(int content, int num, int weight[], int value[])
{
  int maxValue[num + 1][content + 1]; //声明背包最大价值数组,maxValue[i][j]表示考虑1-i的物品放入容量为j的背包的最大价值
  int state[num + 1];                 //背包存放状态数组, state[i]=1表示将此物品存放到背包
  for (int i = 0; i <= num; i++)
  {
    maxValue[i][0] = 0; //初始化最大价值数组, 当容量为0时 最大价值为0;
  }
  for (int i = 0; i <= content; i++)
  {
    maxValue[0][i] = 0; //初始化最大价值数组, 当物品数量为0时, 最大价值也为0;
  }

  //只有一个物品的情况
  for (int i = 1; i <= content; i++)
  {
    if (weight[1] > i)
      maxValue[1][i] = 0;
    else
    {
      maxValue[1][i] = weight[1];
    }
  }
  //当物品有2-num个的情况
  for (int i = 2; i <= num; i++) //物品数量从2-num
  {
    for (int j = 1; j <= content; j++) //背包容量从1-content
    {
      if (weight[i] > j)
        maxValue[i][j] = maxValue[i - 1][j];
      else
      {
        int a = maxValue[i - 1][j];
        int b = maxValue[i - 1][j - weight[i]] + value[i];
        maxValue[i][j] = a > b ? a : b;
      }
    }
  }

  //背包装载的问题
  int cc = content;
  for (int k = 0; k <= num; k++)
  {
    if (maxValue[k][cc] == maxValue[k - 1][cc])
    {
      state[k] = 0;
    }
    else
    {
      state[k] = 1;
      cc -= weight[k];
    }
  }

  cout << "背包的最大价值为: " << maxValue[num][content] << endl;
  cout << "背包的装载方法为: ";
  for (int i = 1; i <= num; i++)
  {

    cout << state[i] << " ";
  }
}
int main()
{
  int w[] = {0, 2, 2, 6, 5, 4};
  int v[] = {0, 6, 3, 5, 4, 6};
  Knapsack(10, 5, w, v);
  return 0;
}
