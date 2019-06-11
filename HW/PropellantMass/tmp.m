clear, close all, clc;
load Thrust
load Imp
NT=Thrust/Imp;
NPMC=NT*0.0358;
intAreaNPMC(1,352)=zeros();
for i=1:350
    intAreaNPMC(1,i)=((NPMC(1,i)+NPMC(1,i+1))/2)*(.01);
end
t=[1:351];
m_Prop(size(NT))=zeros();
m_Prop(1,1)=0.0358;
for i=2:351
    m_Prop(1,i)= m_Prop(1,i-1)-intAreaNPMC(1,i-1);
end
plot(t, m_Prop);

