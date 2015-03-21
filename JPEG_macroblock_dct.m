function C_dct=JPEG_macroblock_dct(C)
% Perform a dct transform on a macroblock 8x8
C_dct = double(zeros(8,8));
C=double(C);
for u=1:8
    for v=1:8
        G = 0;
        for x=1:8
            for y=1:8
                G = G +(JPEG_dct_alpha(u-1) * JPEG_dct_alpha(v-1)*C(x,y)*cos(pi/8 * (x - .5) * (u-1))*cos(pi/8 * (y - .5) * (v-1)));
            end;
        end;
        C_dct(u,v) = G;
    end;
end;
return ;