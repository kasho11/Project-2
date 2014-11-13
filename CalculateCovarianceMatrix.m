#This function calculates the covariance matrix.
#
#The CalculateEigenvectors fuction utilizes this
#to simplify the computationally infeasible problem
#of finding the eigenvectors of the entire face matrix
#
#The Covariance matrix is found by taking the original matrix of faces
#transpose multiplied by the original matrix of faces.
#
#The benefit to this way of approaching the problem is that
#for this specific dataset, it reduces the size of the covariance
#matrix to 142x142 instead of 62500x62500, something that is
#near impossible for a normal computer to store.  

function retval = CalculateCovarianceMatrix (FaceMatrix)

	#This line of code computes the covariance matrix as stated above
	retval = FaceMatrix'*FaceMatrix;
endfunction