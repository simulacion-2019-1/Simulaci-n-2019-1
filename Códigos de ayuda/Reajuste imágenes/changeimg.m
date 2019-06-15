ds = imageDatastore('C:\Users\aulasfce1\Pictures\Try1','IncludeSubfolders',true,'FileExtensions','.jpg','LabelSource','foldernames');
s=ds.Files;
c={};
for i=1:1:length(s')
    t1=imread(s{i,1});
    t1=imresize(t1,[227 227]);
    imwrite(t1,s{i,1})
end