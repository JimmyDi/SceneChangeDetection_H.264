%%%%%Created by Di @Carleton University 2016-04-19    liudi1992@outlook.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen('E:\Document\SceneChangeDetection_H.264\JM\IPR.txt');
C = textscan(fid, '%d%f');
fclose(fid);

Frame = vertcat(C{1});
IPR = vertcat(C{2});
X=max(Frame);

x = 0:X; 
y=IPR;
figure;
subplot(1,3,1);
plot(x,y,'r');
axis ([0 X+1 0 50]);
xlabel('Frame Number'),ylabel('IPR');

%%%%IPR1
fid = fopen('E:\Document\SceneChangeDetection_H.264\JM\IPR1.txt');
D = textscan(fid, '%d %f');
fclose(fid);
IPR1 = vertcat(D{2});

x = 0:X; 
y=IPR1;
subplot(1,3,2);
plot(x,y,'r');
axis ([0 X+1 0 10]);
xlabel('Frame Number'),ylabel('IPR1');

%%%%IPR2
fid = fopen('E:\Document\SceneChangeDetection_H.264\JM\IPR2.txt');
D = textscan(fid, '%d %f');
fclose(fid);
IPR2 = vertcat(D{2});

x = 0:X; 
y=IPR2;
subplot(1,3,3);
plot(x,y,'r');
axis ([0 X+1 0 5]);
xlabel('Frame Number'),ylabel('IPR2');

