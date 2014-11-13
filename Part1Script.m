ImageList=ReadFaceLocations(LoadFaceFile());
Faces=LoadFaceMatrix(ImageList);
NormFaces=NormalizeFaces(Faces);
Eigens=CalculateEigenvectors(Faces);
Facespace = CalculateFacespace(NormFaces, Eigens);
SaveFacespace(Facespace);
FacespaceCoefficients = CalculateFacespaceCoefficients(Facespace, Faces);
SaveFacespaceCoefficients(FacespaceCoefficients);
AverageFace=CalculateAverageFace(Faces);
Rec = ReconstructionVector(Facespace, NormFaces(:,3), 3);
colormap('gray');
Reconstruct = AverageFace + Rec;
imagesc(resize(Reconstruct,250,250));