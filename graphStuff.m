x=[0:0.1:2];

for i=1:length(x)
  y(i) = 3;
endfor

% y=3
subplot(2,3,1)
plot(x,y)

% y=x
subplot(2,3,2)
plot(x,x)

% y=x^2
subplot(2,3,3)
plot(x, x.*x)

% y=sqrt(x)
subplot(2,3,4)
plot(x,x.^0.5)

% y=ceil(x)
subplot(2,3,5)
plot(x,ceil(x))

% y = log(x+1)
subplot(2,3,6)
plot(x,log10(x+1))
