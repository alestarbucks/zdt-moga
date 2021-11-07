%%main script
clc, clear, close all

MAXGENS=1000;
POPSIZE=200;

fitness = @zdt1;
nvar = 30;
Lb=zeros(size(1,nvar));
Ub=ones(size(1,nvar));

options=optimoptions('gamultiobj', 'Display', 'iter',...
    'MaxGenerations',MAXGENS,...
    'PopulationSize',POPSIZE,...
    'PlotFcn',@gaplotpareto);

[x1,fval1,exitflag1,output1,population1,scores1]=gamultiobj(fitness,nvar,[],[],[],[],Lb,Ub,options);


%%plot the exact solution
xs=linspace(0,1,100);
hold on;
plot(xs,1-sqrt(xs));
saveas(gcf,'plots/zdt1.png');

%%--------

fitness = @zdt2;
nvar = 30;
Lb=zeros(size(1,nvar));
Ub=ones(size(1,nvar));

options=optimoptions('gamultiobj', 'Display', 'iter',...
    'MaxGenerations',MAXGENS,...
    'PopulationSize',POPSIZE,...
    'PlotFcn',@gaplotpareto);

[x2,fval2,exitflag2,output2,population2,scores2]=gamultiobj(fitness,nvar,[],[],[],[],Lb,Ub,options);

%%plot the exact solution
xs=linspace(0,1,100);
hold on;
plot(xs,1-(xs.^2));
saveas(gcf,'plots/zdt2.png');


%%--------

fitness = @zdt3;
nvar = 30;
Lb=zeros(size(1,nvar));
Ub=ones(size(1,nvar));

options=optimoptions('gamultiobj', 'Display', 'iter',...
    'MaxGenerations',MAXGENS,...
    'PopulationSize',POPSIZE,...
    'PlotFcn',@gaplotpareto);

[x3,fval3,exitflag3,output3,population3,scores3]=gamultiobj(fitness,nvar,[],[],[],[],Lb,Ub,options);

%%plot the exact solution
xs=linspace(0,1,100);
hold on;
plot(xs,1-sqrt(xs)-(xs.*sin(10*pi.*xs)));
saveas(gcf,'plots/zdt3.png');


%%--------

fitness = @zdt4;
nvar = 10;
Lb=-5.*ones(size(1,nvar));
Lb(1)=0;
Ub=5.*ones(size(1,nvar));
Ub(1)=1;

options=optimoptions('gamultiobj', 'Display', 'iter',...
    'MaxGenerations',MAXGENS,...
    'PopulationSize',POPSIZE,...
    'PlotFcn',@gaplotpareto);

[x4,fval4,exitflag4,output4,population4,scores4]=gamultiobj(fitness,nvar,[],[],[],[],Lb,Ub,options);

%%plot the exact solution
xs=linspace(0,1,100);
hold on;
plot(xs,1-(sqrt(xs)));
plot(xs,1.25*(1-(sqrt(xs/1.25))),'b')
saveas(gcf,'plots/zdt4.png');


%%--------

fitness = @zdt5;
nvar = 11;
Lb=zeros(size(1,nvar));
Ub=31.*ones(size(1,nvar));
Ub(1)=1073741823;
intvars=linspace(1,nvar,nvar);

options=optimoptions('gamultiobj', 'Display', 'iter',...
    'MaxGenerations',MAXGENS,...
    'PopulationSize',POPSIZE,...
    'PlotFcn',@gaplotpareto);

[x5,fval5,exitflag5,output5,population5,scores5]=gamultiobj(fitness,nvar,[],[],[],[],Lb,Ub,[],intvars,options);

%%plot the exact solution
xs=linspace(1,31,100);
hold on;
plot(xs,10./xs);
plot(xs,11./xs, 'b');
saveas(gcf,'plots/zdt5.png');


%%--------

fitness = @zdt6;
nvar = 10;
Lb=zeros(size(1,nvar));
Ub=ones(size(1,nvar));

options=optimoptions('gamultiobj', 'Display', 'iter',...
    'MaxGenerations',MAXGENS,...
    'PopulationSize',POPSIZE,...
    'PlotFcn',@gaplotpareto);

[x6,fval6,exitflag6,output6,population6,scores6]=gamultiobj(fitness,nvar,[],[],[],[],Lb,Ub,options);

%%plot the exact solution
xs=linspace(0.2,1,100);
hold on;
plot(xs,1-(xs.^2));
saveas(gcf,'plots/zdt6.png');

%%--------


