/*
 * @Author: @Edwin
 * @Date: 2021-05-07 17:16:03
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-07 18:08:28
 * @FilePath: \growth-record\Algorithm\src\LongestCommonSequence.cpp
 * @Description: 最长公共子序列(LCS)    此程序是详细介绍, 输出结果包含分析矩阵, 最长公共子序列和最大长度
 */
#include <iostream>
#include <stack>
#include <string>
using namespace std;
void LCS(string str1, string str2)
{
  int m = str1.length() + 1;
  int n = str2.length() + 1;
  int **res, **temp; //int ** 表示的是二级指针, 指向一级指针
  res = new int *[m];
  temp = new int *[m];
  for (int i = 0; i < m; i++)
  {
    res[i] = new int[n];
    temp[i] = new int[n];
    for (int j = 0; j < n; j++)
      temp[i][j] = 0;
  }
  for (int i = 0; i < m; i++)

  {
    res[i][0] = 0;
    res[0][i] = 0;
  }
  for (int i = 0; i < m - 1; i++)
  {
    for (int j = 0; j < n - 1; j++)
    {
      if (str1[i] == str2[j])
      {
        res[i + 1][j + 1] = res[i][j] + 1;
        temp[i + 1][j + 1] = 1; //1代表箭头指向斜上方
      }
      else if (res[i][j + 1] >= res[i + 1][j])
      {
        res[i + 1][j + 1] = res[i][j + 1];
        temp[i + 1][j + 1] = 2; //2代表箭头指向上方
      }
      else
      {
        res[i + 1][j + 1] = res[i + 1][j];
        temp[i + 1][j + 1] = 3; //3表示箭头指向左方
      }
    }
  }
  for (int i = 0; i < m; i++) //输出分析矩阵
  {
    for (int j = 0; j < n; j++)
    {
      cout << res[i][j] << " ";
    }
    cout << endl;
  }

  stack<char> comStr;                //存放LCS字符
  stack<int> subscript1, subscript2; //存放str1和str2对应的相同字符的下标
  for (int i = m - 1, j = n - 1; i >= 0 && j >= 0;)
  {
    if (temp[i][j] == 1)
    {
      i--;
      j--;
      comStr.push(str1[i]);
      subscript1.push(i);
      subscript2.push(j);
    }
    else if (temp[i][j] == 2)
      i--;
    else
      j--;
  }
  cout << str1 << endl;
  for (int i = 0; i < m && !subscript1.empty(); i++)
  {
    if (i == subscript1.top())
    {
      cout << 1;
      subscript1.pop();
    }
    else
      cout << " ";
  }
  cout << endl;
  cout << str2 << endl;
  for (int i = 0; i < n && !subscript2.empty(); i++)
  {
    if (i == subscript2.top())
    {
      cout << 1;
      subscript2.pop();
    }
    else
      cout << " ";
  }
  cout << endl;
  cout << "LCS: ";
  while (!comStr.empty())
  {
    cout << comStr.top();
    comStr.pop();
  }
  cout << endl;
  cout << "MaxLength: " << res[m - 1][n - 1] << endl;
  for (int i = 0; i < m; i++)
  {
    delete res[i];
    delete temp[i];
  }
  delete[] res;
  delete[] temp;
}
int main()
{
  string str1 = "ABCPDSFJGODIHJOFDIUSHGD";
  string str2 = "OSDIHGKODGHBLKSJBHKAGHI";
  LCS(str1, str2);
  return 0;
}
