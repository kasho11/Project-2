function retval = NormalizeFaces (FaceMatrix)
	retval=bsxfun(@minus, FaceMatrix, CalculateAverageFace(FaceMatrix));
endfunction