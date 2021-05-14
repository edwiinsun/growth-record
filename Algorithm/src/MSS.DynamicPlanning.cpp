/*
 * @Author: @Edwin
 * @Date: 2021-05-13 19:58:08
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-13 19:58:09
 * @FilePath: \growth-record\Algorithm\src\MSS.DynamicPlanning.cpp
 * @Description: 最大字段和的动态规划算法, 时间复杂度: O(NlogN) 
 * 思想：将序列划分为左右两部分，则最大子段和可能在三处出现：左半部、右半部以及跨越左右边界的部分。递归的终止条件是：left == right
 */
