#This function calculates a reconstruction vector to be added 
#to a normalized average face to reconstruct a requested face.
#
#This function is called by the main demonstration script to be added
#to the normalized average face to calculate a reconstructed image
#
#This function takes the Facespace, the index of the face that needs to be
#reconstructed, and the NormalizedImage of the subject.  Three steps then occur.  
#First, a loop is set up and prepared.  Then, a weight is calculated using the dot
#product of the normalized image and the facespace.  Finally, the weight vector is 
#multiplied by the corresponding eigenface and is added to the "Total Image".  The 
# total image is returned to the user to be added to the normalized face.  

function retval = ReconstructionVector (Facespace, NormalizedImage, FaceNumber)

	#The loop variables are initialized
	Counter = 1;
	TotalVector = 0;
	CounterMax = size(Facespace)(2);
	while Counter <= CounterMax
	
		#The weight is calculated using the dot product of the normalized image
		#and the corresponding eigenface
		Weight = dot(NormalizedImage,Facespace(:,Counter));
		
		#The vector containing the weighted eigenfaces is continually added
		#to as addition is commutative.  
		TotalVector = TotalVector+(Facespace(:,Counter)*Weight);
		Counter = Counter + 1;
	endwhile
	
	#the running total vector is returned to the user
	retval = TotalVector;
endfunction