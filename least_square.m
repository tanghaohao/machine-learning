n=50
x=linspace(-3,3,n)'
pix=pi*x
y=sin(pix)./pix + 0.1*x + 0.05*randn(n,1)

N=1000
X=linspace(-3,3,N)
p(:,1)=ones(n,1)
P(:,1)=ones(N,1)
for j=1:15
    p(:,2*j)=sin(j/2*x),p(:,2*j+1)=cos(j/2*x)
    P(:,2*j)=sin(j/2*X),P(:,2*j+1)=cos(j/2*X)
end

t = (p'*p)\(p'*y)
Y = P*t

figure(1), clf, hold on
axis([-2.8 2.8 -0.5 1.2])
plot(X,Y,'r-')
plot(x,y,'bo')
