X=[0.78
0.78
0.81
1.72
3.54
6.27
7.58
7.58
7.58
7.58
7.58
8.11
8.11
7.58
7.58
9.00
11.73
12.78
12.78
12.78];

Y=[0.90
-0.90
0.00
0.00
0.00
0.00
0.00
3.40
-3.40
6.80
-6.80
2.55
-2.55
1.28
-1.28
0.00
0.00
0.00
1.70
-1.70];

Z=zeros(length(X),1);
Z(4)  = -.1;
Z(14) = Z(4);
Z(15) = Z(14);
Z(18) = .1;
Z(19) = Z(18);
Z(20) = Z(18);