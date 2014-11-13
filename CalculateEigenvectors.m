function retval = CalculateEigenvectors (FaceMatrix)
	vecs=input("How many eigenvectors do you want calculated?\n");
	[vectors, values]=eigs(CalculateCovarianceMatrix(FaceMatrix),vecs);
	retval=vectors;
endfunction