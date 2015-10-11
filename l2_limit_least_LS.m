n=50
x=linspace(-3,3,n)'
pix=pi*x
y=sin(pix)./pix + 0.1*x + 0.2*randn(n,1)

N=1000
X=linspace(-3,3,N)'

x2=x.^2, X2=X.^2
hh=2*0.3^2, l=0.1
k=exp(-(repmat(x2,1,n)+repmat(x2',n,1)-2*x*x')/hh)
K=exp(-(repmat(X2,1,n)+repmat(x2',N,1)-2*X*x')/hh)
t1 = pinv(k)*y
Y1 = K*t1
t2 = (k^2+l*eye(n))\(k*y)
Y2 = K*t2

figure(1), clf, hold on
axis([-2.8 2.8 -0.5 1.2])
plot(X,Y1,'r.')
plot(X,Y2,'b*')
plot(x,y,'bO')
