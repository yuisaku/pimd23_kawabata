function dy = pendulum(t,y,m,l,k)

g = 9.8;
dy = [y(2);-l/(m*1).*(k.*l.*y(2)+m.*g.*sin(y(1)))];