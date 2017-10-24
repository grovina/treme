clf;
hold on;

for l = 1:size(incid,1)
    i = incid(l,1);
    j = incid(l,2);
    plot3([X(i);X(j)],[Y(i),Y(j)],[Z(i),Z(j)],'r');
end

scatter3(X,Y,Z,'LineWidth',2,'SizeData',20);

for i = 1:N
  %text(X(i),Y(i),Z(i),num2str(i),'FontSize',8,'HorizontalAlignment','Center','VerticalAlignment','Middle','FontWeight','bold','BackgroundColor','w');
end

xlabel('x');
ylabel('y');
grid off;
view([-45,45]);
axis equal;
zlim([-5 5]);


drawnow