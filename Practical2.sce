//Vaibhav Swami 1/19/FET/BCS/040
XB = [80,90,99,10,116,125,133,141,151,160,169,179,180] // coordinates of bomber
YB = [0,-2,-5,-9,-15,-18,-23,-29,-28,-25,-21,-20,-17] // coordinates of bomber
vel = 20  // velocity
YF = 50 // initial conditions for fighter
XF = 0 //  initial conditions for fighter
for i = 1:12
    dist = sqrt( (YB(i) - YF)^2 + ( XB(i) - XF )^2 ) // distance between target and persuer
    s = ((YB(i)-YF)/dist)
    c = ((XB(i)-XF)/dist)
    XF = XF + vel*c
    YF = YF + vel*s
    if(dist<=10) then
        disp("Bomber Engaged")
        disp(i-1)
    end
end
