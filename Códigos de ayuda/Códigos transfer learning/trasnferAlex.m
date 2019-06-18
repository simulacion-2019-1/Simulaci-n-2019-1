net=alexnet;
n=input('Ingrese el número de clases a clasificar: ');
ly=net.Layers;

ly(23)=fullyConnectedLayer(n);
ly(25)=classificationLayer;

ds=imageDatastore('Dirección donde están las imágenes','IncludeSubfolders',true,...
  'FileExtensions','.jpg','LabelSource','foldernames');
[tri,ti]=splitEachLabel(ds,0.8,'randomize'); 

opts = trainingOptions('sgdm', ...
    'MiniBatchSize',10, ...
    'MaxEpochs',10, ...
    'InitialLearnRate',0.001, ...
    'Shuffle','every-epoch', ...
    'ValidationData',ti, ...
    'ValidationFrequency',3, ...
    'Verbose',false, ...
    'Plots','training-progress');
Mynn=trainNetwork(tri,ly,opts);

predictedLabels=classify(Mynn, ti);
accuracy=mean(predictedLabels==ti.Labels)
