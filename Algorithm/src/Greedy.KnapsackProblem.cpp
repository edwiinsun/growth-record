/*
 * @Author: @Edwin
 * @Date: 2021-05-15 08:53:27
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-15 09:06:57
 * @FilePath: \growth-record\Algorithm\src\Greedy.KnapsackProblem.cpp
 * @Description: 贪心算法求解背包问题(可分割)
 * 
 */
#include <iostream>
#include <Algorithm>
using namespace std;
struct Goods
{
  double weight;
  double value;
  double per;
  double load; //装载的权重
}
//定义一个sort函数比较器
int
compare(Goods const *a, Goods const *b)
{
  if (a.per > b.per)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}
//贪心算法
void Greedy(Goods g[], int num, int content)
{
  for (int i = 0; i < num; i++)
  {
    if (g[i].weight < content)
    {
      content -= g[i].weight;
      g[i].load = 1;
    }
    else
    {
      if (content > 0)
      {
        g[i].load = content / g[i].weight;
        content = 0;
      }
    }
  }
}
int main()
{
  int total_weight(0), total_value(0);
  int num, bag_content;
  cin >> num >> bag_content;
  Goods g[n + 1];
  for (int i = 0; i < num; i++)
  {
    cin >> g[i].weight >> g[i].value;
    g[i].per = g[i].value / g[i].weight;
    g[i].load = 0;
  }
  sort(g, g + n, compare);
  Greedy(g, num, bag_content);
  for (int i = 0; i < num; i++)
  {
    if (g[i].load > 0)
    {
      total_weight = g[i].load * g[i].weight;
      total_value = g[i].load * g[i].value;
    }
    else
    {
      break;
    }
  }
  cout << "总容量: " << total_weight << " 总价值: " << total_value;
}