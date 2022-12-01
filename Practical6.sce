//Vaibhav Swami 1/19/FET/BCS/040
t=(floor(rand(1:90)*100)+1)

x=[125,125,150,175,175]
y=[150,250,250,250,300]

for policy = 1:5
    curr=115
    p=0
    l=0
    d=3

    for i = 1:90
        limit = x(policy)
        reorder = y(policy)
        cust = t(i)
        if(i>d) then
            curr = curr+reorder
            d=90
        end
        if(cust>curr) then
            p=p+(curr*16)
            l=l+(cust-curr)*18
            curr=0
        else
            p=cust*16
            curr=curr-cust
            l=l+(curr*0.75)
        end
        if((curr<=limit)&(d==90)) then
            d=i+3
        end
    end
    disp("policy",policy)
    disp("profit",p)
    disp("loss",l)
    disp("remaining",curr)
end
