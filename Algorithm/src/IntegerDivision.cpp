/*
 * @Author: @Edwin
 * @Date: 2021-05-07 14:18:36
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-07 14:51:36
 * @FilePath: \growth-record\Algorithm\src\IntegerDivision.cpp
 * @description: 基础题, 整数划分
 */
/*
 * 首先对题目进行分析:
 * 1. 当n=1时, InDivi(1,m)  即表示对1进行不超过m的划分, 情况只有一种
 * 2. 当m=1时, InDivi(n,1)  即表示对n进行不超过1的划分, 情况也只有一种
 * 3. 当n==m时, InDivi(n,m) 即表示对n进行不超过n的划分, 此时的情况划分为两种求解方法比较合适, 即分为包含m和不包含m的划分, 
 *      划分出来的数包含m就意味着只有一种划分方式, 不包含m的方式可以看成n>m类型的划分方式
 * 4. 当n>m时, InDivi(n,m)  可以看做对n的划分有了条件的限制, 都小于m, 此时划分出来的情况就不是由m决定, 而是取决于n-m, 因为
 *      若InDivi(6,5), 就是对6-5=1, 然后求出1的划分情况, 若6-4=2, 即是求出2的划分方式: 2, 1+1; 所以放到递归方程就是(n-m,m);
 * 5. 当n<m时, 仍然是n==m情况
 *
*/
#include <iostream>
using namespace std;
int InDi(int n, int m)
{
  if (n == 1 || m == 1)
  {
    return 1;
  }
  else if (n > m)
  {
    return InDi(n - m, m) + InDi(n, m - 1);
  }
  else if (n < m)
  {
    return InDi(n, n);
  }
  else if (n == m)
  {
    return 1 + InDi(n, m - 1);
  }
}
int main()
{
  int n(0), m(0);
  cin >> n >> m;
  cout << InDi(n, m);
  return 0;
}