function[judge,q1,O1,D1]=Ave(O,D,U,V,q)
F1=U./O;
F2=V./D;
qij=zeros(3,3);
for i=1:3
    for j=1:3
        qij(i,j)=(F1(i)+F2(j))/2;
    end
end
q1=q.*qij;

judge=1;
O1=zeros(1,3);D1=zeros(1,3);
for i=1:3
    O1(i)=sum(q1(i,:));
    D1(i)=sum(q1(:,i));
end
for i=1:3
    if U(i)/O1(i)<=0.97||U(i)/O1(i)>=1.03||V(i)/D1(i)<=0.97||V(i)/D1(i)>=1.03
        judge=0;break;
    end
end