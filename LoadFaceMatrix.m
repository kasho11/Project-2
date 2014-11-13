#This function reads filenames from a matrix provided
#and formats the images into a column vector which
#is then appended to contain all of the images in the file.
#
#This function is called by the main demonstration script
#and the matrix is used in many of the other functions.  
#
#The function initializes a face matrix and begins to
#initialize a loop which reads and formats the images. 
#These formatted images are then appended to a master
#matrix, and in the end, the matrix contians each image
#specified in the array as a column vector.  

function retval = LoadFaceMatrix (ImageList)

	#The faces matrix and loop counters are initialized
	Faces=[];
	CountMax = size(ImageList)(1);
	Counter=1;
	
	#The loop iterates through each image, first reading it
	#and then reshaping the square 250x250 matrix into a single
	#62500x1 column.  That column is then appended to the right
	#side of the matrix of images.
	while(Counter <= CountMax)
		Temp=imread(char(ImageList(Counter,1)));
		Temp=reshape(Temp,prod(size(Temp)),1);
		Faces(:,size(Faces,2)+1) = Temp;
		Counter = Counter + 1;
	endwhile
	
	#The matrix of images is returned to the user.  
	retval = Faces;
endfunction