function retval = CalculateFacespaceCoefficients (Facespace, FaceMatrix)
	CoefficientMatrix = [];
	CoefficientNumber = size(Facespace)(2);
	Counter = 1;
	CounterMax = size(FaceMatrix)(2);
	while Counter <= CounterMax
		CoefficientMatrix (:,Counter) = Facespace' * (FaceMatrix(:,Counter) - CalculateAverageFace(FaceMatrix));
		Counter = Counter + 1;
	endwhile
	retval = CoefficientMatrix;
endfunction