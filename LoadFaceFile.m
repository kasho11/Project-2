#This function loads a file containing a list of faces to be analyzed
#
#This function is called by the main demonstration script and is used
#to obtain the original image matrix
#
#The user is prompted for a file name, and that filename is returned
#to the main program

function retval = LoadFaceFile ()
	
	#The user is prompted for a filepath which is then returned to the program
	ans = input("Where is the file that contains face locations located?\n", "s");
	retval = ans;
endfunction