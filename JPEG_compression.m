function J=JPEG_compression(I,Q)
				
%perform a compression of the image I with quality 0<Q<100
    
I = double(I);
    
I = I - 128;
    
[I1 I2] = size(I);
    
J = zeros(I1,I2);
    
J=double(J);
    
    
Ms = JPEG_get_quantization_table(Q);
    
for i=1:I1/8
        
	for j=1:I2/8
            
		C = I((i-1)*8 + 1:i*8, (j-1)*8 + 1:j*8);
            
		C = dct2(C);
            
		C = round(C ./ Ms) .* Ms;
            
            
		J((i-1)*8 + 1:i*8, (j-1)*8 + 1:j*8) = round(idct2(C));
        
	end;
    
end;
    
    
J = J + 128;
    
J = max(min(J,255),0);
    
return ;