n=50
x=linspace(-3,3,n)'
pix=pi*x
y=sin(pix)./pix + 0.1*x + 0.05*randn(n,1)

hh=2*0.3^2
t0=randn(n,1)
e=0.1
%k = exp(-(repmat(x.^2,1,n)+repmat(x.^2',n,1)-2*x*x')/hh)
for loop=1:n*1024
    i = ceil(rand*n)
    ki = exp(-(x-x(i)).^2/hh)
    t = t0-e*ki*(ki'*t0-y(i))
    % t = t0-e*k*(k*t0-y)./n
    if norm(t-t0)<0.00001
        break
    end
    t0 = t
end
N=1000
X=linspace(-3,3,N)'
K=exp(-(repmat(X.^2,1,n)+repmat(x.^2',N,1)-2*X*x')/hh)
Y=K*t0

figure(1), clf, hold on
axis([-2.8 2.8 -0.5 1.2])
plot(X,Y,'r-')
plot(x,y,'bo')
                                        
