function retval = ReconstructionVector (Facespace, NormalizedImage, FaceNumber)
	Counter = 1;
	TotalVector = 0;
	CounterMax = size(Facespace)(2);
	while Counter <= CounterMax
		Weight = dot(NormalizedImage,Facespace(:,Counter));
		TotalVector = TotalVector+(Facespace(:,Counter)*Weight);
		Counter = Counter + 1;
	endwhile
	retval = TotalVector;
endfunction