#This function calculates the Facespace of a normalized matrix
#and it's corresponding eigenvectors.  
#
#This function is called by the main demonstration script, and the 
#Facespace saved for future use
#
#The facespace is calculated with three steps.  First, the number of 
#Eigenvectors is calculated to determine the dimensions of the matrix.
#Then, a loop is set up to create an eigenface with the corresponding
#Eigenvectors.  Finally, that eigenface is appended to the facespace
#with a column index corresponding with the eigenvector used.  

function retval = CalculateFacespace(NormalizedFaces, Eigenvectors)

	#Basic loop variables are set up, and the Facespace is initialized.
	CounterMax=size(Eigenvectors);
	Counter=1;
	Facespace = [];
	
	#The loop iterates through the eigenvector and appends them to the facespace
	while Counter <= CounterMax(2)
		Facespace(:,Counter) = NormalizedFaces * Eigenvectors(:,Counter);
		Counter = Counter + 1;
	endwhile
	
	#The facespace is returned. 
	retval = Facespace;
endfunction