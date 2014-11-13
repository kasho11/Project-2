#This function normalizes a matrix of faces
#
#This function is called by the main demonstration script and it's 
#value is used in future computations.  
#
#The normalized image matrix is obtained by first calculating the 
#average image, using the CalculateAverageFace function, and then 
#that column is subtracted from each image in the matrix to normalized
#the images.  

function retval = NormalizeFaces (FaceMatrix)

	#This line calls upon the binary function command to subtract columnwise
	#the average face from the face matrix.
	retval=bsxfun(@minus, FaceMatrix, CalculateAverageFace(FaceMatrix));
endfunction