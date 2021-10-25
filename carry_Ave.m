[judge,q1,O1,D1]=Ave(present_O,present_D,future_O,future_D,present_seperate);
while judge==0
    present_O=O1;
    present_D=D1;
    present_seperate=q1;
    [judge,q1,O1,D1]=Ave(present_O,present_D,future_O,future_D,present_seperate);
end
future_O_Ave=O1;
future_D_Ave=D1;
future_seperate=q1;
future_total=sum(future_O_Ave);