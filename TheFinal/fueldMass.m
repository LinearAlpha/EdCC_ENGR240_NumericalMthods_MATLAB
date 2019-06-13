function m_Prop = fueldMass(thrust, imp, m, t)
% 
% propThr = thrust ./ imp .* m;
% m_Prop = zeros(1, length(t));
% m_Prop(1) = m;
% for i = 2:length(t) - 1
%     %tmp = h / 2 * (propThr(1) + propThr(i)) + h * sum(propThr(2:i - 1));
%     tmp = (propThr(i - 1) + propThr(i)) / 2 * 0.01;
%     tmp = m_Prop(i - 1) - tmp;
%     if tmp < 0
%         break
%     else
%         m_Prop(i) = tmp;
%     end
% end
% load("thrust")
% load('Imp');
t = 0:0.01:3.5;
N = numel(t);
h = (3.5-0)/(N-1);

NewThrust = (thrust.*m)./imp;
tmp = zeros(size(t));
for i = 1:N-1
tmp(i) = ((NewThrust(i) + NewThrust(i+1))/2)*h;
end
m_Prop = zeros(size(t));
m_Prop(1)=0.0358;
for i = 2:N-1
    m_Prop(i) = m_Prop(i-1)-tmp(i-1);
end
