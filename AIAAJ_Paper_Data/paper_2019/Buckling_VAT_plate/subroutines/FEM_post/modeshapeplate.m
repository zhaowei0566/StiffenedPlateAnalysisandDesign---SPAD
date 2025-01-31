FEM.frequency=frequency;
FEM.modeshape=VVsort;

bendingmode=find(ActiveDof<=FEM.NodeNumber);

ActiveBendDOF=ActiveDof(bendingmode);

bendModeNo=length(bendingmode);

%---------------Mode Shape Plot-------------------

if bendModeNo<10
    mode=bendModeNo;
else
    mode=plotmodenNo;
end



X=zeros(size(FEM.elementNodes,1),size(FEM.nodesCord,2));
Y=zeros(size(FEM.elementNodes,1),size(FEM.nodesCord,2));
Z=zeros(size(FEM.elementNodes,1),size(FEM.nodesCord,2));

coordinates=FEM.nodesCord;
nodes(1:size(FEM.elementNodes,1),1)=1:size(FEM.elementNodes,1);
nodes(1:FEM.elementNumber,2:size(FEM.elementNodes,2)+1)=FEM.elementNodes;
%         %---Plot Mesh----
% PlotMesh(coordinates,nodes)
% view(2)
%
factor=1;

modeshapeUX=zeros(FEM.NodeNumber,1);
modeshapeUY=zeros(FEM.NodeNumber,1);
modeshapeUZ=zeros(FEM.NodeNumber,1);

for modeNo= mode
    
    
    modeshapeUZ(ActiveBendDOF)=FEM.modeshape(1:bendModeNo,modeNo);
    dx=min(Xcoord):(max(Xcoord)-min(Xcoord))/100:max(Xcoord);
    dy=min(Ycoord):(max(Ycoord)-min(Ycoord))/100:max(Ycoord);
    
    [x3,y3]=meshgrid(dx,dy,0);
    
    z3=griddata(Xcoord,Ycoord,modeshapeUZ,x3,y3,'v4')*factor;
    
    % ZQ=griddata(Xcoord,Ycoord,Zcoord,modeshapeUZ,x3,y3,z3,'linear');
    hf=figure;
    axes1 = axes('Parent',hf,'YTick',[0 Plate.length],'XTick',[0 Plate.width],...
        'DataAspectRatio',[1 1 1]);
    hold(axes1,'all');
    
    
    [max_value,max_id]=max(abs(z3(:)));
    set(gcf,'color','w')
    sign_p_n = z3(max_id)/max_value;
    %     surf(x3,y3,abs(z3/z3(max_id)),'FaceColor','interp',...
    %         'EdgeColor','none',...
    %         'FaceLighting','phong');hold on;hold on; axis([0 Plate.length 0 Plate.width]);
    %
%     scalefactor = sign_p_n*1/(max(abs(z3(:)))/max([max(abs(y3(:))) max(abs(x3(:)))]));
%     
    scalefactor = sign_p_n*1/max(abs(z3(:)));
    
    % maximum value normalized in the mode shape
    surf(x3,y3,(z3)*scalefactor ,'FaceColor','interp',...
        'EdgeColor','none',...
        'FaceLighting','phong');hold on;hold on; axis([0 Plate.length 0 Plate.width]);
    %
    set(gca,'FontSize',16);
    colorbar
    colormap(coolwarm(15.))
    
  
 
    switch Solver
        case 'vibration'
            
            Natural_Freq=frequency(modeNo);
            
            title(['Mode shape of Mode ' num2str(modeNo) ', \omega=' num2str(Natural_Freq) 'Hz'],'FontSize',12);
        case 'prestressed_vibr'
            
            Natural_Freq=frequency(modeNo);
            
            title(['Prestressed mode shape of Mode ' num2str(modeNo) ', \omega=' num2str(Natural_Freq) 'Hz'],'FontSize',12);
            
        case 'buckling'
            
            title(['Buckling Mode ' num2str(modeNo) ', Load Factor \lambda=' num2str(frequency(modeNo))]);%,...
            %             sprintf('\n'),'(\delta=' num2str(delta) ', \gamma=' num2str(gamma) ',\beta=' num2str(beta) ')'],'FontSize',12);
            
            gamma=0;
            beta=0;
            axis off
            
            %             title(['Mode ' num2str(modeNo) ', Load Factor \lambda=' num2str(frequency(modeNo)),...
            %                 sprintf('\n'),'(ds/hs=' num2str(depthratio(depthNO)) ', \gamma=' num2str(gamma) ',\beta=' num2str(beta) ')'],'FontSize',12);
    end
    
    % export mode shape
    
    export_fig modeshape
end









