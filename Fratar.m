function[judge,q1,O1,D1]=Fratar(O,D,U,V,q)
F1=U./O;
F2=V./D;

L1=zeros(1,3);L2=zeros(1,3);
for i=1:3
    L1(i)=O(i)/sum(q(:,i).*F1(i));
end
for i=1:3
    L2(i)=D(i)/sum(q(i,:).*F2(i));
end
q1=zeros(3,3);
for i=1:3
    for j=1:3
        q1(i,j)=q(i,j)*F1(i)*F2(j)*(L1(i)+L2(j))/2;
    end
end

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