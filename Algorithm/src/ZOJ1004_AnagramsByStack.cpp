/*
 * @Author: @Edwin
 * @Date: 2021-04-23 14:59:32
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-04-23 15:35:25
 * @FilePath: \growth-record\Algorithm\src\ZOJ1004_AnagramsByStack.cpp
 */
//ZOJ1004-Anagrams by Stack
//根据一系列堆栈操作实现回文构词法
// Created by Jiahe Sun on 2021/4/23.

#include "ZOJ1004_AnagramsByStack.h"
#include <iostream>
#include <stack>
#include <vector>
using namespace std;

string a, b;
stack<char> build;
vector<char> operate;
int length;

void DFS(int iPush, int iPop)
{
    if (iPush == length && iPop == length)
    {
        for (int i = 0; i < operate.size(); i++)
            cout << operate[i] << " ";
        cout << endl;
    }
    if (iPush + 1 <= length)
    {
        build.push(a[iPush]);
        operate.push_back('i');
        DFS(iPush + 1, iPop);
        build.pop();
        operate.pop_back();
    }
    if (iPop + 1 <= iPush && iPop + 1 <= length && build.top() == b[iPop])
    {
        char tc = build.top();
        build.pop();
        operate.push_back('o');
        DFS(iPush, iPop + 1);
        build.push(tc);
        operate.pop_back();
    }
}
int main()
{
    while (cin >> a >> b)
    {
        length = a.length();
        cout << "[" << endl;
        DFS(0, 0);
        cout << "]" << endl;
    }
    return 0;
}
