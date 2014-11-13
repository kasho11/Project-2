#This function takes the matrix of faces, and calculates the average faces
#
#This functionality is used by the CalculateFacespaceCoefficient function
#and the ReconstructionVector function. 
#
#To obtain the average face, the value for each corresponding pixel in each
#of the sample faces is averaged to create this face.

function retval = CalculateAverageFace (FaceMatrix)

	#This line automatically averages the entire matrix by row.  
	retval = mean(FaceMatrix,2);
endfunction