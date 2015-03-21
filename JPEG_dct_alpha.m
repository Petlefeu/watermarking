function alpha = JPEG_dct_alpha(u)
if (u == 0)
    alpha = sqrt(1/8);
else
    alpha = sqrt(2/8);
end;
return;