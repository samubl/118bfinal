function plotCurrent(X,Rnk,Kmus,done,dataname)
K=size(Kmus,1);

clf;
figure(1);
hold on;

InitColorMat= [1 0 0;   
               0 0 1;
               0 1 0;   
               1 0 1; 
               0 1 1;
               0 0 0;
               1 1 0];

KColorMat=InitColorMat(1:K,:);

colorVec=Rnk*KColorMat;
muColorVec=eye(K)*KColorMat;
scatter3(X(:,1),X(:,2),X(:,3),[],colorVec)

scatter3(Kmus(:,1),Kmus(:,2),Kmus(:,3),200,muColorVec,'d','filled');
%axis equal;
hold off;
view(3), grid on
xlabel('x'), ylabel('y'), zlabel('z')
if (done == 1)
    saveas(gcf,sprintf('./images/%s_K_%d_result.png',dataname, K))
end