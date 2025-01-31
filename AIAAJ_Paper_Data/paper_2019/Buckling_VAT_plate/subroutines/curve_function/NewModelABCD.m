% clear xstiffener YYstiffener XXstiffener ystiffener;
% % if numberstiffenerelement==15
%     switch caseNum
%         case 'BB1'
%
%             % CASE-I
%             XXstiffener(1,:)=[0,0.0251289000000000,0.0496662000000000,0.0735500000000000,0.0967061000000000,...
%                 0.119017000000000,0.140291000000000,0.160408000000000,0.179212000000000,0.196384000000000,...
%                 0.211692000000000,0.224878000000000,0.235534000000000,0.243508000000000,0.248359000000000,...
%                 0.250000000000000,0.248359000000000,0.243515000000000,0.235575000000000,0.224890000000000,...
%                 0.211706000000000,0.196401000000000,0.179206000000000,0.160423000000000,0.140314000000000,...
%                 0.119030000000000,0.0967126000000000,0.0735594000000000,0.0496778000000000,0.0251368000000000,0];
%
%             XXstiffener(2,:)= [0.600000000000000,0.574871000000000,0.550334000000000,0.526450000000000,0.503294000000000,...
%                 0.480983000000000,0.459709000000000,0.439592000000000,0.420788000000000,0.403616000000000,0.388308000000000,...
%                 0.375122000000000,0.364466000000000,0.356492000000000,0.351641000000000,0.350000000000000,0.351641000000000,...
%                 0.356485000000000,0.364426000000000,0.375110000000000,0.388294000000000,0.403599000000000,0.420794000000000,...
%                 0.439577000000000,0.459686000000000,0.480970000000000,0.503287000000000,0.526441000000000,0.550322000000000,...
%                 0.574863000000000,0.600000000000000];
%
%             YYstiffener(1,:)=[0.800000000000000,0.779365000000000,0.758069000000000,0.736048000000000,0.713222000000000,...
%                 0.689533000000000,0.664979000000000,0.639456000000000,0.612848000000000,0.585240000000000,0.556580000000000,...
%                 0.526800000000000,0.496219000000000,0.464460000000000,0.432411000000000,0.400031000000000,0.367593000000000,...
%                 0.335575000000000,0.303915000000000,0.273232000000000,0.243449000000000,0.214788000000000,0.187143000000000,...
%                 0.160564000000000,0.135049000000000,0.110481000000000,0.0867840000000000,0.0639610000000000,0.0419410000000000,0.0206420000000000,0];
%
%             YYstiffener(2,:)=[0,0.0206354000000000,0.0419307000000000,0.0639524000000000,0.0867779000000000,...
%                 0.110467000000000,0.135021000000000,0.160544000000000,0.187152000000000,0.214760000000000,...
%                 0.243420000000000,0.273200000000000,0.303781000000000,0.335540000000000,0.367589000000000,...
%                 0.399969000000000,0.432408000000000,0.464425000000000,0.496085000000000,0.526768000000000,...
%                 0.556551000000000,0.585212000000000,0.612857000000000,0.639436000000000,0.664951000000000,...
%                 0.689519000000000,0.713216000000000,0.736039000000000,0.758059000000000,0.779358000000000,0.800000000000000];
%
%
%
%         case 'CC1'
%
%             YYstiffener(1,:)=[0:0.8/(numberstiffenerelement*2):0.8];
%
%             YYstiffener(2,:)= YYstiffener(1,:);
%
%
%             XXstiffener(1,:)=-1.562.*YYstiffener(1,:).^2+1.25.*YYstiffener(1,:);
%
%             XXstiffener(2,:)=0.6-XXstiffener(1,:);
%
%
%         case 'BB' % Model BB in the first example in the paper
%
%             YYstiffener(1,:)=[0:0.8/(numberstiffenerelement*2):0.8];
%
%             YYstiffener(2,:)= YYstiffener(1,:);
%
%
%             XXstiffener(1,:)=-0.9375.*YYstiffener(1,:).^2+0.75.*YYstiffener(1,:);
%
%             XXstiffener(2,:)=0.6-XXstiffener(1,:);
%
%
%
%         case 'CC' % Model C in the first example
%
%             YYstiffener(1,:)=[0:0.8/(numberstiffenerelement*2):0.8];
%
%             YYstiffener(2,:)= YYstiffener(1,:);
%
%
%             XXstiffener(1,:)=-0.9375.*YYstiffener(1,:).^2+0.75.*YYstiffener(1,:)+0.05;
%
%             XXstiffener(2,:)=0.6-XXstiffener(1,:);
%
%         case 'AA' % Model A in the first example
%             XXstiffener(1,:)=[0,0.0286162000000000,0.0567227000000000,0.0842597000000000,0.111155000000000,...
%                 0.137312000000000,0.162510000000000,0.186608000000000,0.209429000000000,...
%                 0.230605000000000,0.249839000000000,0.266710000000000,0.280644000000000,...
%                 0.291178000000000,0.297768000000000,0.300000000000000,0.297766000000000,...
%                 0.291184000000000,0.280652000000000,0.266746000000000,0.249850000000000,...
%                 0.230618000000000,0.209435000000000,0.186618000000000,0.162524000000000,...
%                 0.137316000000000,0.111161000000000,0.0842647000000000,0.0567295000000000,0.0286207000000000,0];
%
%             YYstiffener(1,:)=[0.0, 0.0195555000000000,0.0397947000000000,0.0607928000000000,0.0826401000000000,...
%                 0.105438000000000,0.129208000000000,0.154082000000000,0.180218000000000,0.207619000000000,...
%                 0.236438000000000,0.266754000000000,0.298398000000000,0.331407000000000,0.365496000000000,...
%                 0.399981000000000,0.434517000000000,0.468569000000000,0.501582000000000,0.533174000000000,...
%                 0.563544000000000,0.592364000000000,0.619775000000000,0.645907000000000,0.670778000000000,...
%                 0.694559000000000,0.717355000000000,0.739203000000000,0.760200000000000,0.780441000000000,...
%                 0.800000000000000];
%
%             XXstiffener(2,:)=[0.600000000000000,0.571384000000000,0.543277000000000,0.515740000000000,0.488845000000000,...
%                 0.462688000000000,0.437490000000000,0.413392000000000,0.390571000000000,0.369395000000000,0.350161000000000,...
%                 0.333290000000000,0.319356000000000,0.308822000000000,0.302232000000000,0.300000000000000,0.302234000000000,...
%                 0.308816000000000,0.319348000000000,0.333254000000000,0.350150000000000,0.369382000000000,0.390565000000000,...
%                 0.413382000000000,0.437476000000000,0.462685000000000,0.488839000000000,0.515735000000000,0.543271000000000,...
%                 0.571379000000000,0.600000000000000];
%
%             YYstiffener(2,:)=[0,0.0195555000000000,0.0397947000000000,0.0607928000000000,0.0826401000000000,0.105438000000000,...
%                 0.129208000000000,0.154082000000000,0.180218000000000,0.207619000000000,0.236438000000000,0.266754000000000,...
%                 0.298398000000000,0.331407000000000,0.365496000000000,0.399981000000000,0.434517000000000,0.468569000000000,...
%                 0.501582000000000,0.533174000000000,0.563544000000000,0.592364000000000,0.619775000000000,0.645907000000000,...
%                 0.670778000000000,0.694559000000000,0.717355000000000,0.739203000000000,0.760200000000000,0.780441000000000,0.800000000000000];
%
%
%         case 'straight'
%
%             XXstiffener(1,:)=0.2*ones(1,31); XXstiffener(2,:)=0.4*ones(1,31);
%             YYstiffener(1,:)=linspace(0.00001,0.799999,31);
%             YYstiffener(2,:)=linspace(0.00001,0.799999,31);
%
%         case 'DD' % Model C in the first example
%
%             YYstiffener(1,:)=[0:0.8/(numberstiffenerelement*2):0.8];
%
%             YYstiffener(2,:)= YYstiffener(1,:);
%
%
%             XXstiffener(1,:)=-0.9375.*YYstiffener(1,:).^2+0.75.*YYstiffener(1,:)+0.1;
%
%             XXstiffener(2,:)=0.6-XXstiffener(1,:);
%
%
%     end
% % else
% %     disp('--------Error in Stiffener Element Number-------')
% %     break
% % end
%
% % figure;plot(XXstiffener(1,:),YYstiffener(1,:),'r.',XXstiffener(2,:),YYstiffener(2,:),'ko');axis image;axis([0 0.6 0 0.8]);
%
%
%

clear xstiffener YYstiffener XXstiffener ystiffener;
% if numberstiffenerelement==15
switch caseNum
    
    case 'AA' % 
        
        YYstiffener(1,:)=[0:0.8/(numberstiffenerelement*2):0.8];
        
        YYstiffener(2,:)= YYstiffener(1,:);
        
        
        XXstiffener(1,:)=-0.9375.*YYstiffener(1,:).^2+0.75.*YYstiffener(1,:);
        
        XXstiffener(2,:)=0.6-XXstiffener(1,:);
        
        
        
    case 'BB-2' % 
        
        YYstiffener(1,:)=[0:0.8/(numberstiffenerelement*2):0.8];
        
        YYstiffener(2,:)= YYstiffener(1,:);
        
        
        XXstiffener(1,:)=-0.9375.*YYstiffener(1,:).^2+0.75.*YYstiffener(1,:)+0.05;
        
        XXstiffener(2,:)=0.6-XXstiffener(1,:);
        
    case 'BB' % Model A in the first example
        
        %         XXstiffener(1,:)=[0,0.0286162000000000,0.0567227000000000,0.0842597000000000,0.111155000000000,...
        %             0.137312000000000,0.162510000000000,0.186608000000000,0.209429000000000,...
        %             0.230605000000000,0.249839000000000,0.266710000000000,0.280644000000000,...
        %             0.291178000000000,0.297768000000000,0.300000000000000,0.297766000000000,...
        %             0.291184000000000,0.280652000000000,0.266746000000000,0.249850000000000,...
        %             0.230618000000000,0.209435000000000,0.186618000000000,0.162524000000000,...
        %             0.137316000000000,0.111161000000000,0.0842647000000000,0.0567295000000000,0.0286207000000000,0];
        %
        %         YYstiffener(1,:)=[0.0, 0.0195555000000000,0.0397947000000000,0.0607928000000000,0.0826401000000000,...
        %             0.105438000000000,0.129208000000000,0.154082000000000,0.180218000000000,0.207619000000000,...
        %             0.236438000000000,0.266754000000000,0.298398000000000,0.331407000000000,0.365496000000000,...
        %             0.399981000000000,0.434517000000000,0.468569000000000,0.501582000000000,0.533174000000000,...
        %             0.563544000000000,0.592364000000000,0.619775000000000,0.645907000000000,0.670778000000000,...
        %             0.694559000000000,0.717355000000000,0.739203000000000,0.760200000000000,0.780441000000000,...
        %             0.800000000000000];
        %
        %         XXstiffener(2,:)=[0.600000000000000,0.571384000000000,0.543277000000000,0.515740000000000,0.488845000000000,...
        %             0.462688000000000,0.437490000000000,0.413392000000000,0.390571000000000,0.369395000000000,0.350161000000000,...
        %             0.333290000000000,0.319356000000000,0.308822000000000,0.302232000000000,0.300000000000000,0.302234000000000,...
        %             0.308816000000000,0.319348000000000,0.333254000000000,0.350150000000000,0.369382000000000,0.390565000000000,...
        %             0.413382000000000,0.437476000000000,0.462685000000000,0.488839000000000,0.515735000000000,0.543271000000000,...
        %             0.571379000000000,0.600000000000000];
        %
        %         YYstiffener(2,:)=[0,0.0195555000000000,0.0397947000000000,0.0607928000000000,0.0826401000000000,0.105438000000000,...
        %             0.129208000000000,0.154082000000000,0.180218000000000,0.207619000000000,0.236438000000000,0.266754000000000,...
        %             0.298398000000000,0.331407000000000,0.365496000000000,0.399981000000000,0.434517000000000,0.468569000000000,...
        %             0.501582000000000,0.533174000000000,0.563544000000000,0.592364000000000,0.619775000000000,0.645907000000000,...
        %             0.670778000000000,0.694559000000000,0.717355000000000,0.739203000000000,0.760200000000000,0.780441000000000,0.800000000000000];
        %
        nodenumber=numberstiffenerelement*2+1;
        xx1=[0 0.3 0];
        yy1=[0 0.4 0.8];
        xx2=[0.6 0.3 0.6];
        yy2=[0 0.4 0.8];
        figure;
        YYstiffener(1,:)=linspace(0,0.8,nodenumber);
        XXstiffener(1,:)=interp1(yy1,xx1,YYstiffener(1,:),'spline');
        hold on;
        plot(XXstiffener(1,:),YYstiffener(1,:),'ro')
        
        YYstiffener(2,:)=linspace(0,0.8,nodenumber);
        XXstiffener(2,:)=interp1(yy2,xx2,YYstiffener(2,:),'spline');
        hold on;
        plot(XXstiffener(2,:),YYstiffener(2,:),'bo');hold off;axis image;box on;grid on;
        
        
    case 'CC'
        
        nodenumber=numberstiffenerelement*2+1;
        xx1=[0 0.3 0];
        yy1=[0 0.4 0.8];
        xx2=[0.6 0.3 0.6];
        yy2=[0 0.4 0.8];
        %         figure;
        YYstiffener(1,:)=linspace(0,0.8,nodenumber);
        XXstiffener(1,:)=interp1(yy1,xx1,YYstiffener(1,:),'spline')+0.15;
%         hold on;
%         plot(XXstiffener(1,:),YYstiffener(1,:),'r-','LineWidth',1,'MarkerFaceColor',[1 0 0],'MarkerEdgeColor',[1 0 0],...
%             'Marker','square','LineStyle','none','Color',[0 0 0])
        
        YYstiffener(2,:)=linspace(0,0.8,nodenumber);
        XXstiffener(2,:)=interp1(yy2,xx2,YYstiffener(2,:),'spline')-0.15;
%         hold on;
%         plot(XXstiffener(2,:),YYstiffener(2,:),'r-','LineWidth',1,'MarkerFaceColor',[1 0 0],'MarkerEdgeColor',[1 0 0],...
%             'Marker','square','LineStyle','none','Color',[0 0 0]);hold off;axis image;box on;grid on;
        
    case 'straight'
        
        XXstiffener(1,:)=0.2*ones(1,31); XXstiffener(2,:)=0.4*ones(1,31);
        YYstiffener(1,:)=linspace(0.00001,0.799999,31);
        YYstiffener(2,:)=linspace(0.00001,0.799999,31);
                
        
end
% else
%     disp('--------Error in Stiffener Element Number-------')
%     break
%     end

% figure;plot(XXstiffener(1,:),YYstiffener(1,:),'r.',XXstiffener(2,:),YYstiffener(2,:),'ko');axis image;axis([0 0.6 0 0.8]);


% plot stiffener geometry
% hold on; plot(xstiffener,ystiffener,'r-','LineWidth',1,'MarkerFaceColor',[1 0 0],'MarkerEdgeColor',[1 0 0],...
%     'Marker','square','LineStyle','none','Color',[0 0 0]); axis image;
% figure;
hold on;
plot(XXstiffener(1,:),YYstiffener(1,:),'r-','LineWidth',1,'MarkerFaceColor',[1 0 0],'MarkerEdgeColor',[1 0 0],...
    'Marker','square','LineStyle','none','Color',[0 0 0])

% YYstiffener(2,:)=linspace(0,0.8,nodenumber);
% XXstiffener(2,:)=interp1(yy2,xx2,YYstiffener(2,:),'spline')-0.15;
hold on;
plot(XXstiffener(2,:),YYstiffener(2,:),'r-','LineWidth',1,'MarkerFaceColor',[1 0 0],'MarkerEdgeColor',[1 0 0],...
    'Marker','square','LineStyle','none','Color',[0 0 0]);hold off;axis image;box on;grid on;