function Ms=JPEG_get_quantization_table(Q)
    Mb = [
    16 11 10 16 24 40 51 61 ;
    12 12 14 19 26 58 60 55 ;
    14 13 16 24 40 57 69 56 ;
    14 17 22 29 51 87 80 62 ;
    18 22 37 56 68 109 103 77 ;
    24 35 55 64 81 104 113 92 ;
    49 64 78 87 103 121 120 101 ;
    72 92 95 98 112 100 103 99
    ];
    
    if (Q < 50)
        if Q < 0
            Q=1;
        end;
        S = 5000 / Q;
    else
        if Q > 100
            Q=100;
        end;
        S = 200 - 2*Q;
    end;
    
    Ms = zeros(8,8);
    
    for i=1:8
        for j=1:8
            Ms(i,j) = floor((S*Mb(i,j) + 50)/100);
        end;
    end;
    
    Ms = max(1,Ms);
return;