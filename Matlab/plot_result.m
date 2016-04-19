fid = fopen('E:\Document\SceneChangeDetection_H.264\Matlab\SceneChangeDetectionResult.txt');
C = textscan(fid, '%d %d %d %d %f');
fclose(fid);
Frame = vertcat(C{1});
IPR = vertcat(C{5});
X=max(Frame);

x = 0:X; 
y=IPR;
plot(x,y,'r');
axis ([0 X+1 0 50]);
xlabel('Frame Number'),ylabel('IPR');
