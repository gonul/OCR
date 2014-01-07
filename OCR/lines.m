function [fl re]=lines(im_text) 
im_text=clip(im_text); 
num_files=size(im_text,1);
for s=1:num_files
    if sum(im_text(s,:))==0
        nm=im_text(1:s-1, :); % �LK SATIR
        rm=im_text(s:end, :); % GER�YE KALAN SATIRLAR
        fl = clip(nm);
        re=clip(rm);
        break
    else
        fl=im_text; % TEK SATIRDAN OLU�UYOR.
        re=[ ]; % GER�YE KALAN SATIR YOK.
    end
end
% CL�P FONKS�YONUNU TANITMAK.
function img_out=clip(img_in)
[f c]=find(img_in);
img_out=img_in(min(f):max(f),min(c):max(c));