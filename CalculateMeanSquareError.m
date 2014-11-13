function retval = CalculateMeanSquareError (Facespace)
  mse = 0;
  rowCounter = 1;
  rowMax = size(Facespace)(1);
  columnCounter = 1;
  columnMax = size(Facespace)(2);
  sum = 0;
  
  while rowCounter <= rowMax
    columnCounter = 1;
    while columnCounter <= columnMax
      sum = sum + (Facespace(rowCounter, columnCounter) - Facespace(rowCounter, 1));
      
      columnCounter = columnCounter + 1;
    endwhile
    rowCounter = rowCounter + 1;
  endwhile
 
  mse = sum / ((rowMax * columnMax) - 1)

  retval = mse;
endfunction