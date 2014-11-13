function retval = CalculateFacespace(NormalizedFaces, Eigenvalues)
	CounterMax=size(Eigenvalues);
	Counter=1;
	Facespace = [];
	while Counter <= CounterMax(2)
		Facespace(:,Counter) = NormalizedFaces * Eigenvalues(:,Counter);
		Counter = Counter + 1;
	endwhile
	retval = Facespace;
endfunction