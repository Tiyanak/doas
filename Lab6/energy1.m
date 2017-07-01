function imgO=energy(img)
	imgO=zeros(1,size(img,2));
	for i=1:size(img,2)
		[h,x] = imhist(img(:,i));
		p = h / sum(h);
		imgO(1,i)= (-sum(sum( p.*p )));
end