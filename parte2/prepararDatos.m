
%Datos para Vel angular y lineal
train_angular = training(:,[2,3,4,5,12])
train_lineal = training(:,[2,3,4,5,13])
indices = round(linspace(1,size(training,1),1500))

train_angular = train_angular(indices,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)
save datos_entrenamiento_angular train_angular

train_lineal = train_lineal(indices,:)
train_lineal(isinf(train_lineal)) = 5.0
train_lineal = double(train_lineal)
save datos_entrenamiento_lineal train_lineal
