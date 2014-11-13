function retval = LoadFaceMatrix (ImageList)
	Faces=[];
	CountMax = size(ImageList)(1);
	Counter=1;
	while(Counter <= CountMax)
		Temp=imread(char(ImageList(Counter,1)));
		Temp=reshape(Temp,prod(size(Temp)),1);
		Faces(:,size(Faces,2)+1) = Temp;
		Counter = Counter + 1;
	endwhile
	retval = Faces;
endfunction