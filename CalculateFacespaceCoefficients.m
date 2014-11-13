#This function calculates the Facespace Coefficient Matrix.  
#
#This function is called by the main demonstration script and saved
#for future use.  
#
#To obtain the CoefficientMatrix, there are three steps.  First, the 
#number of Coefficients is calculated by the number of eigenfaces.  
#This value is then passed into the loop which iterates and calculates 
#The coefficient by taking the transpose of the facespace and multiplying
#it by the normalized face matrix.  Finally, this value is appended for each
#of the coefficients for each of the faces.

function retval = CalculateFacespaceCoefficients (Facespace, FaceMatrix)

	#The CoefficientMatrix and loop variables are initialized
	CoefficientMatrix = [];
	Counter = 1;
	CounterMax = size(FaceMatrix)(2);
	
	#This loop iterates through the facespace and the face matrix to compute the
	#coefficients as stated above.  
	while Counter <= CounterMax
		CoefficientMatrix (:,Counter) = Facespace' * (FaceMatrix(:,Counter) - CalculateAverageFace(FaceMatrix));
		Counter = Counter + 1;
	endwhile
	
	#The final CoefficientMatrix is returned to the user
	retval = CoefficientMatrix;
endfunction