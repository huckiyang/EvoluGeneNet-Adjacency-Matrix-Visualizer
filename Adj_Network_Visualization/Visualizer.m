% This code was done by C. Huck Yang from Georgia Tech, 2018.
% Please Reference the code as C.H. Yang et al. ICML-WCB (2018)
% 
% If you find this useful in your work, please consider citing the following reference:
% @article{yang2018learning,
%  title={Learning Functions in Large Networks requires Modularity and produces Multi-Agent Dynamics},
%  author={Yang, CH and Ooi, Rise and Hiscock, Tom and Eguiluz, Victor and Tegner, Jesper},
%  journal={arXiv preprint arXiv:1807.03001},
%  year={2018}
% }


function Color(W)
% Input graph Weights:
cost=W; 
% Determine node locations:
Loc=rand(length(cost),2);
weight=nonzeros(cost);
% Create the digraph, and modify plot parameters
G=digraph(cost);
h=plot(G);
colormap hsv           % select color palette 
h.EdgeCData=weight;    % define edge colors
h.MarkerSize=0.2*sum(abs(cost))+0.5; % define node size
h.NodeCData=0.1*(sum(cost)); 
h.XData=Loc(:,1);      % place node locations on plot
h.YData=Loc(:,2);
colorbar
% hide axes:
set(gca,'XTickLabel',{' '})
set(gca,'YTickLabel',{' '})
set(gca,'YTick',[])
set(gca,'XTick',[])
sz =size(cost);     %Print the Size of Network
set(gca,'color','w')   %Background Color
title(['Network Size = ',num2str(sz(1))])
