#This function saves the matrix of FacespaceCoefficients
#to be accessed later.  
#
#This function was created to save FacespaceCoefficients in between
#parts of the assignment.  Regretably, the part that utilized
#the loading of this file was not completed, and as such
#this function has limited uses at this point. This function
#was called from the main demonstration script. 
#
#This function utilizes the built in save feature to save
#a matrix of FacespaceCoefficients to a file titled "coefficients.txt".
#That file could be read using the load command to obtain the 
#FacespaceCoefficients for facial recognition and reconstruction

function retval = SaveFacespaceCoefficients (FacespaceCoefficients)

	#The save command saves the variable 'FacespaceCoefficients' to 'coefficients.txt'
	save coefficients.txt FacespaceCoefficients;
endfunction