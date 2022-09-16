% ================================
% FUNGSI YANG AKAN DI CARI AKARNYA
% f(x)=e^x-5x^2=0
% BATAS X = 0  S/D   1
% Diprogram oleh: Arif Johar Taufiq
% ================================
clc
clear all
a=0;
b=1;
e=0.00001;
iterasi=0;
disp('  i       a          c         b        fa         fc         fb');
while (abs(b-a))>e,
    c=(a+b)/2;   
    fa= 2.71281^a-5*a^2;
    fb= 2.71281^b-5*b^2;
    fc= 2.71281^c-5*c^2;
    disp(sprintf('%3g %10.7f %10.7f %10.7f %10.7f %10.7f %10.7f',iterasi,a,c,b,fa,fc,fb));
    if fa*fc < 0
        b=c;
    else
        a=c;
    end
    iterasi=iterasi+1;
end
Hampiran_akar= c
