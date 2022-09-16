% ========================================
% PROGRAM REGULA FALSI
% CEK  TUGAS DENGAN PROGRAM MATLAB 
% SOAL: f(x)=X^4-8X^3-35X^2+450X-1001
% BATAS X = (4,5 ~ 6)
% SOLUSI ANALITIS(TEORI) DIDAPAT=5,60979
% DI PROGRAM OLEH: ARIF JOHAR TAUFIQ
% x = -7.4036
% ========================================
clc
clear all
a=-8;
b=0;
e=0.01;
iterasi=1;
% awal hit
disp('  i       a          x         b        fa         fc         fb');
er=1;
while (er)> e
    fa= a^4-8*a^3-35*a^2+450*a-1001;
    fb= b^4-8*b^3-35*b^2+450*b-1001;1
    x=(a*fb-b*fa)/(fb-fa);
    fx= x^4-8*x^3-35*x^2+450*x-1001;
    disp(sprintf('%3g %10.7f %10.7f %10.7f %10.7f %10.7f %10.7f',iterasi,a,x,b,fa,fx,fb));
    if fa*fx < 0
        b=x;
    else
        a=x;
    end
    er=abs(fx);
    iterasi=iterasi+1;
end
Hampiran_akar= x
