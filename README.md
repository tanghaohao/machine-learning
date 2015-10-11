# machine-learning

## least_square.m
使用最小二乘法进行学习的实例
使用线性模型：
f(x) = theta'\*g(x)
其中基函数g(x) = (1, sin(x/2), cos(x/2), sin(2x/2), cos(2x/2), ... sin(15x/2), cos(15x/2))
theta是最小二乘法进行学习的参数向量theta=(theta1, theta2, ..., theta31)

## Gradient_descent.m
使用随机梯度和批量梯度下降的方法进行学习的实例
使用的是核模型
f(x)=sum(theta(i)\*K(x,x(i)))
其中K(x,c) = exp(-(|x-c|^2)/(2\*h^2))
注释部分为批量梯度下降的代码
