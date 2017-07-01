function imgO=entropy(img)
	imgO=zeros(1,size(img,2));
	for i=1:size(img,2)
		[h,x] = imhist(img(:,i));
		p = h / sum(h);
		log_p = log2(p);
		log_p(log_p == -Inf) = 0;
		imgO(1,i)= (-sum(sum( p.*log_p )));
end