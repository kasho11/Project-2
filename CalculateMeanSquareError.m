#This function calculates the MeanSquareError of the reconstructed face
#
#The function is called from the main demonstration script, but is not functional
#
#This function initializes a double loop, and sums the Facespace - Reconstructed Face
#The final sum is then divided by the number of elements - 1 to take the unbiased mean

function retval = CalculateMeanSquareError (Facespace)

	#Loop variables and assorted other variables are initialized
    mse = 0;
    rowCounter = 1;
	rowMax = size(Facespace)(1);
	columnCounter = 1;
	columnMax = size(Facespace)(2);
	sum = 0;
  
	#The first loop iterates through each row
	while rowCounter <= rowMax
		columnCounter = 1;
		
		#The second loop iterates through the columns
		while columnCounter <= columnMax
		
			#The difference between the elements is kept as a running sum
			sum = sum + (Facespace(rowCounter, columnCounter) - Facespace(rowCounter, 1));
      
			columnCounter = columnCounter + 1;
		endwhile
		rowCounter = rowCounter + 1;
	endwhile
 
	#The summation of the difference of elements is divided by the number of elements
	#to obtain the main square error.  
	mse = sum / ((rowMax * columnMax) - 1)
	
	#The mean square error is returned to the user
	retval = mse;
endfunction