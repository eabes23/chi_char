# chi_char
The R script Calculate_Chirality_Charecteristic.R contains a function to calculate chi as defined in Eq. 2 of
the paper "Molecular Chirality Quantification: Tools and Benchmarks."

The function requires a table in which the rows the (ordered) atoms and columns x,y, and z report cartesion coordinates. 
Such tables can easily be prepared from xyz files. See examples below.

atom x y x  
1 0.00 0.00 0.00  
2 0.22 0.53 0.53  
3 0.44 0.34 1.21  
4 0.64 0.14 2.29  
5 0.80 0.1 3.63  

OR

x y x  
0.00 0.00 0.00  
0.22 0.53 0.53  
0.44 0.34 1.21  
0.64 0.14 2.29  
0.80 0.1 3.63  

OR 

atom x y x  
C 0.00 0.00 0.00   
C 0.22 0.53 0.53  
C 0.44 0.34 1.21  
C 0.64 0.14 2.29  
C 0.80 0.1 3.63  

