%%Authors:
%Ahmet Kaan Ipekoren 21141
%Elif Taskin 20481
%Date : January 06 2020

%videoPath = 'video.MOV'; %% In the Mask function, dimensions should change
videoPath = 'challenge_Trim.mp4';

videoSource = vision.VideoFileReader(videoPath);
depVideoPlayer = vision.DeployableVideoPlayer();

while ~isDone(videoSource)
      frame = single2uint8(step(videoSource));
      frame = LaneDetection(frame);
      step(depVideoPlayer, frame);
end

release(depVideoPlayer);
release(videoSource);