function[judge,q1,O1,D1]=Furness(O,D,U,V,q)

F2=V./D;
q1=F2.*q;

for i=1:3
    O(i)=sum(q1(i,:));
end
F1=U./O;
F1=F1';
q1=F1.*q1;

judge=1;
D1=zeros(1,3);O1=zeros(1,3);
for i=1:3
    D1(i)=sum(q1(:,i));
    O1(i)=sum(q1(i,:));
end

for i=1:3
    if U(i)/O1(i)<=0.97||U(i)/O1(i)>=1.03||V(i)/D1(i)<=0.97||V(i)/D1(i)>=1.03
        judge=0;break;
    end
end