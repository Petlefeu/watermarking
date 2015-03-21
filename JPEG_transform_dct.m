function J=JPEG_transform_dct(I)
%convertir une image en une image dont les carrés ont subit le traitement jpeg, dct incluse
I = double(I);
I = I - 128;
[I1 I2] = size(I);
J = zeros(I1,I2);
J = double(J);
for i=1:I1/8
    for j=1:I2/8
        C = I((i-1)*8 + 1:i*8, (j-1)*8 + 1:j*8);
        C = JPEG_macroblock_dct(C);
        J((i-1)*8 + 1:i*8, (j-1)*8 + 1:j*8) = C;
    end;
end;

return ;