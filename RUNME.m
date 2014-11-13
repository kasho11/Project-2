#This script demonstrates the features outlined in part 1 of the assignment
#and portions of part 2.  
#
#This script is called by the user, and in turn, executes all other functions.
#
#This script begins by loading a matrix of faces, then calculates the normalized
#matrix, eigenfaces, facespace, and facespace coefficients. These values are saved
#and then an arbitrary face is reconstructed and the MeanSquareError is computed. 
#The final two functions are not completly operational.  

#Image matrix loaded and basic analasys
ImageList=ReadFaceLocations(LoadFaceFile());
Faces=LoadFaceMatrix(ImageList);
NormFaces=NormalizeFaces(Faces);
Eigens=CalculateEigenvectors(Faces);

#Eigenfaces,Facespace, and FacespaceCoefficients are calculated and saved
Facespace = CalculateFacespace(NormFaces, Eigens);
SaveFacespace(Facespace);
FacespaceCoefficients = CalculateFacespaceCoefficients(Facespace, Faces);
SaveFacespaceCoefficients(FacespaceCoefficients);

#Average face is obtained and added to calculated reconstruction vector.  
#MeanSquareError is then computed.  
AverageFace=CalculateAverageFace(Faces);
ReconVector = ReconstructionVector(Facespace, NormFaces(:,3), 3);
colormap('gray');
Reconstruct = AverageFace + Rec;
MeanSquareError = CalculateMeanSquareError(Facespace);