ImageList=ReadFaceLocations(LoadFaceFile());
Faces=LoadFaceMatrix(ImageList);
NormFaces=NormalizeFaces(Faces);
Eigens=CalculateEigenvectors(Faces);
Facespace = CalculateFacespace(NormFaces, Eigens);
SaveFacespace(Facespace);
FacespaceCoefficients = CalculateFacespaceCoefficients(Facespace, Faces);
SaveFacespaceCoefficients(FacespaceCoefficients);