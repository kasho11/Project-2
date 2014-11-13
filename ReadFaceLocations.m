#This function takes in a filename and reads
#each line of the file to a matrix that is then 
#returned to the user
#
#This function is called fro mthe main demonstration script
#and is passed to the LoadFaceMatrix function to obtain
#a face matrix.
#
#This function is designed for the user to have a text file with the
#file paths of images to be analyzed.  The textread function parses
#the file line by line and saves each filepath to the vector which
#is read in another function to load the files

function retval = ReadFaceLocations (FaceFile)
	
	#This command reads the "FaceFile" file and parses each line as
	#a string which is then saved to the filename vector.
	retval=textread(FaceFile,'%s');
endfunction