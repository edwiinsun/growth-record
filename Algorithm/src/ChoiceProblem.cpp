/*
 * @Author: @Edwin
 * @Date: 2021-05-07 14:54:52
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-07 15:32:56
 * @FilePath: \growth-record\Algorithm\src\ChoiceProblem.cpp
 * @Description: 选择问题, 经典问题, 给定数组找出第K小的数    分治策略
 * 将第一个数作为分界点, 将比他小的数放到左边, 大的放到右边
 */
#include <iostream>
#define NUM 1001
int a[NUM];
using namespace std;
int select(int left, int right, int k)
{
  if (left >= right)
    return a[left];
  int nl = left;      //从左到右的指针
  int nr = right + 1; //从右到左的指针

  int pivot = a[left]; //将最左边的元素作为分界数据
  //把左侧>=pivot的元素与右侧<=pivot的元素进行交换
  while (true)
  {
    //在左侧找>=pivot的元素
    do
    {
      nl++;
    } while (a[nl] < pivot);
    //在右侧找<=pivot的元素
    do
    {
      nr--;
    } while (a[nr] > pivot)

        ;
    if (nl >= nr) //没有发现交换对象
      break;
    swap(a[nl], a[nr]);
  }
  if (nr - left + 1 == k)
    return pivot;
  a[left] = a[nr];
  a[nr] = pivot;
  if (nr - left + 1 < k)
    return select(nr + 1, right, k - nr + left - 1); //在右子集中查找
  else
    return select(left, nr - 1, k); //在左子集中查找
}
int main()
{
  int n;
  while (cin >> n)
  {
    int k;
    cin >> k;
    for (int i = 0; i < n; i++)
      cin >> a[i];
    cout << select(0, n - 1, k) << endl;
    return 0;
  }
}