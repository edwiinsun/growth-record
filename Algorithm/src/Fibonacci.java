import java.util.Scanner;
/**
 * @author Jiahe Sun
 */
public class Fibonacci {
//    Fibonacci 算法

    public static void main(String args)
    {
        int fib;
        System.out.println("Please input fib: ");
        Scanner sc=new Scanner(System.in);
        fib= sc.nextInt();
        getFibo(fib);
    }
    public static int getFibo(int fib)
    {
        //前置出错
        if(fib<=0){
            System.out.print("Error:-1");
            return -1;
        }
        int[] array=new int[fib<2?2:fib];
        array[0]=array[1]=1;
        //第一项和第二项需要初始化
        if(fib==1||fib==2) {
            System.out.println(fib==1?array[0]:(array[0]+","+array[1]));
        }else
        {
            //第一二项经过特殊处理之后, 其他项就可以按照一般处理了
            System.out.print(array[0]+","+array[1]);
            for(int i=2;i<fib;i++)
            {
                array[i]=array[i-1]+array[i-2];
                System.out.print(i>fib-2?array[i]:(array[i]+","));
            }
        }
        return array[fib-1];
    }
}
