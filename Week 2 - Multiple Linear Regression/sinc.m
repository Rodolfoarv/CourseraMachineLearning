%1 Prepare your data 
X = 0.0:0.202:20;             %100 points in 0<=x<=20
y = (sin(X-10)) ./ (X-10);
X=X'; y=y';
plot (X,y,'b-');
xlabel('X Axis')
ylabel('Y Axis')
title('Peaks')