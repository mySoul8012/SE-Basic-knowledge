# 概述
Fibonacci系列通过添加两个先前的数字来生成后续数字。Fibonacci系列从两个数字开始 - F 0和F 1。F 0和F 1的初始值可分别取0,1或1,1。

斐波那契系列满足以下条件 -

```
Fn = Fn-1 + Fn-2

```

因此，Fibonacci系列看起来像这样 -

F 8 = 0 1 1 2 3 5 8 13

或者，这个 -

F 8 = 1 1 2 3 5 8 13 21

为了便于说明，F 8的斐波那契显示为 -

![](./images/fibonacci_animation.gif)

# Fibonacci迭代算法
首先，我们尝试起草Fibonacci系列的迭代算法。

```
Procedure Fibonacci(n)
   declare f0, f1, fib, loop 
   
   set f0 to 0
   set f1 to 1
   
   display f0, f1
   
   for loop ← 1 to n
   
      fib ← f0 + f1   
      f0 ← f1
      f1 ← fib

      display fib
   end for
	
end procedure

```

## C中实现如下
```
#include <stdio.h>

int factorial(int n) {
   //base case
   if(n == 0) {
      return 1;
   } else {
      return n * factorial(n-1);
   }
}

int fibbonacci(int n) {
   if(n == 0) {
      return 0;
   } else if(n == 1) {
      return 1;
   } else {
      return (fibbonacci(n-1) + fibbonacci(n-2));
   }
}

int main() {
   int n = 5;
   int i;
	
   printf("Factorial of %d: %d\n" , n , factorial(n));
   printf("Fibbonacci of %d: " , n);
	
   for(i = 0;i < n;i++) {
      printf("%d ",fibbonacci(i));
   }
}

```

输出

```
Factorial of 5: 120
Fibbonacci of 5: 0 1 1 2 3

```

# Fibonacci递归算法
```
START
Procedure Fibonacci(n)
   declare f0, f1, fib, loop 
   
   set f0 to 0
   set f1 to 1
   
   display f0, f1
   
   for loop ← 1 to n
   
      fib ← f0 + f1   
      f0 ← f1
      f1 ← fib

      display fib
   end for

END

```

## C实现如下

```
#include <stdio.h>

int factorial(int n) {
   //base case
   if(n == 0) {
      return 1;
   } else {
      return n * factorial(n-1);
   }
}

int fibbonacci(int n) {
   if(n == 0){
      return 0;
   } else if(n == 1) {
      return 1;
   } else {
      return (fibbonacci(n-1) + fibbonacci(n-2));
   }
}

int main() {
   int n = 5;
   int i;
	
   printf("Factorial of %d: %d\n" , n , factorial(n));
   printf("Fibbonacci of %d: " , n);
	
   for(i = 0;i<n;i++) {
      printf("%d ",fibbonacci(i));            
   }
}

```

输出

```
Factorial of 5: 120
Fibbonacci of 5: 0 1 1 2 3

```

