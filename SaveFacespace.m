#This function saves a Facespace to a file
#
#This function was created to save a Facespace in between
#parts of the assignment.  Regretably, the part that utilized
#the loading of this file was not completed, and as such
#this function has limited uses at this point. This function
#was called from the main demonstration script. 
#
#This function utilizes the built in save feature to save
#a facespace to a file titled "facespace.txt".  That file
#could be read using the load command to obtain the facespace for
#facial recognition and reconstruction

function retval = SaveFacespace(Facespace)

	#The save command saves the variable 'Facespace' to 'facespace.txt'
	save facespace.txt Facespace
endfunction