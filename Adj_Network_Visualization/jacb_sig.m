% Scaling Number k: 1.0, where is the A = tf.Variable(1.0, dtype = tf.float32) 
function y =jacb_sig(x)
s = size(x);
s = s(1);
if (s>17)
    msg = 'Size Error occurred.';
    error(msg)
end
y = zeros(s,s);
% -- I = 1;
% y_0 = [[0.2; 0.5; 0.05],[1.2; 0.1; 0.45],[2.2; 0; 0.05],[1.2; 0.2; 0.45]]; % The Mean of output strength 1.15 vs. 1.2 
% n = 1;
% y_n = y_0(:,n); % Pick the window period
% y_n = [1.2; 0.2; 0.45; zeros(s-3,1)];
y_n = [1.2; 0.25; 0.4; 0.2; 0.3; 0.1; 0.15; 0.35; 0.3; 0.2; 0.2; 0.3; 0.2; 0.2; 0.25;0.1; 0.1];
y_n = y_n(1:s,1);
Ij= 8; % The Mean of the Injecting Intensity (Batch Size*0.5)

for i=1:s
    y(i,:) = (-1*x(i,:)*exp(-1*(x(i,:)*y_n+Ij)))/((exp(-1*(x(i,:)*y_n+Ij))+1).^2)-1;
    if(i>=1) % For the 2nd&3rd nodes, the injection number should be zero
        Ij = 0;
    end
end

end
