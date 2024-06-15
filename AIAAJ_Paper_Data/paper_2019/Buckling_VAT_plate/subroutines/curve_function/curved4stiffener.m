%% --------------------4 CURVED STIFFENERS ----------------------------
XX=[0,10.7117338180542,23.2007675170898,37.3898773193359,53.1922760009766,70.5108718872070,...
    89.2392730712891,109.263145446777,130.458847045898,152.696121215820,175.838409423828,199.742721557617,...
    224.262969970703,249.248443603516,274.545684814453,300.000152587891,325.454650878906,350.752716064453,...
    375.738922119141,400.259124755859,424.163452148438,447.304901123047,469.541412353516,490.737091064453,...
    510.760986328125,529.489929199219,546.808959960938,562.611267089844,576.800292968750,589.288696289063,600];

YY=[0,24.7065277099609,49.8134307861328,75.2942810058594,101.121543884277,127.267654418945,...
    153.704727172852,180.404602050781,207.338699340820,234.478332519531,261.794494628906,289.258178710938,...
    316.839965820313,344.510498046875,372.240203857422,399.999542236328,427.758880615234,455.488616943359,...
    483.159149169922,510.740936279297,538.204589843750,565.521179199219,592.661132812500,619.594909667969,...
    646.294433593750,672.731506347656,698.877624511719,724.704895019531,750.185791015625,775.293090820313,800];
XXstiffener(1,:)=XX;
XXstiffener(2,:)=XX;
YYstiffener(1,:)=sqrt(325^2-(XX-300).^2)-25;
YYstiffener(2,:)=-sqrt(325^2-(XX-300).^2)+825;

YYstiffener(3,:)=YY;
YYstiffener(4,:)=YY;
XXstiffener(3,:)=sqrt(850^2-(YY-400).^2)-650;
XXstiffener(4,:)=-sqrt(850^2-(YY-400).^2)+1250;
figure;
for estiffener=1:4
    plot(XXstiffener(estiffener,:),YYstiffener(estiffener,:),'k.')
    hold on
end
% axis image;hold off;