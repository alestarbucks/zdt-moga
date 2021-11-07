% FileData = load('myvars.mat');
% 
% fn = fieldnames(FileData);
% for k=1:numel(fn)
%     if( isnumeric(FileData.(fn{k})) )
%         csvwrite("csvs/"+string(fn{k})+'.csv', FileData.(fn{k}));
%     end
% end

json_data = jsonencode(output1);
writematrix(json_data, "outputs/output1.csv");

json_data = jsonencode(output2);
writematrix(json_data, "outputs/output2.csv");

json_data = jsonencode(output3);
writematrix(json_data, "outputs/output3.csv");

json_data = jsonencode(output4);
writematrix(json_data, "outputs/output4.csv");

json_data = jsonencode(output5);
writematrix(json_data, "outputs/output5.csv");

json_data = jsonencode(output6);
writematrix(json_data, "outputs/output6.csv");