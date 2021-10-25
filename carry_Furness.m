F1=future_O./present_O;
F1=F1';
present_seperate=F1.*present_seperate;
for i=1:3
    present_D(i)=sum(present_seperate(:,i));
end

[judge,q1,O1,D1]=Furness(present_O,present_D,future_O,future_D,present_seperate);
while judge==0
    present_O=O1;
    present_D=D1;
    present_seperate=q1;
    [judge,q1,O1,D1]=Furness(present_O,present_D,future_O,future_D,present_seperate);
end
future_O_Furness=O1';
future_D_Furness=D1;
future_seperate=q1;
future_total=sum(future_O_Furness);