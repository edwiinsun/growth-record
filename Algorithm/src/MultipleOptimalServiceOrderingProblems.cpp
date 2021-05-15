/*
 * @Author: @Edwin
 * @Date: 2021-05-15 11:19:33
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-15 11:41:48
 * @FilePath: \growth-record\Algorithm\src\MultipleOptimalServiceOrderingProblems.cpp
 * @Description: 贪心算法,最优服务次序问题
 */
#include <iostream>
#include <algorithm>
using namespace std;
int main()
{
  int client_time[10000];
  int service_time[10000];
  int sum[10000];
  int num, windows, time;
  cin >> num >> windows;
  for (int i = 0; i < num; i++)
  {
    cin >> client_time[i];
  }
  sort(client_time, client_time + num);
  int i = 0; //顾客的指针
  int j = 0; //服务窗口的指针
  while (i < num)
  {
    service_time[j] += client_time[i];
    sum[i] += service_time[j];
    i++;
    j++;
    if (j == windows)
      j = 0;
  }
  //计算所有窗口服务时间和
  for (int i = 0; i < num; i++)
  {
    time += sum[i];
  }
  time = time / num;
  cout << time;
  printf("\n.3%lf", time);
  return 0;
}