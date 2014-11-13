#This function computes the eigenvectors and returns the matrix of them
#
#This function is called by the main script to provide a matrix of eigenvectors
#
#The script begins by prompting the user for the number of eigenvectors
#they want to be computed.  This value is stored and then passed into the
#eigs function, whic computes the given number of eigenvectors.  
#the array of vectors is then returned to the user.

function retval = CalculateEigenvectors (FaceMatrix)
	
	#This line of code is the user input prompt.  
	vecs=input("How many eigenvectors do you want calculated?\n");
	
	#These lines of code compute the eigenvectors and return them to the user.  
	[vectors, values]=eigs(CalculateCovarianceMatrix(FaceMatrix),vecs);
	retval=vectors;
endfunction