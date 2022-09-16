% ===============================================
% Program Aturan_Trapesiumf=inline('4*x-x^2','x');
% ===============================================
hasil_eksak=1.6667;
a=input('masukkan batas bawah integrasi :');
b=input(' masukkan batas atas integrasi :');
N=input('masukkan jumlah segmen N :');
h=(b-a)/N;
sum=f(a)+f(b);  
 fak=2    
    for i=1:N-1
    	x=a+i*h;          
    	sum=sum+2*f(x)      
    end
 hasil_numerik=sum*h/2.;
 selisih=hasil_eksak-hasil_numerik;
 kesalahan=abs(selisih/hasil_eksak);
 fprintf('%f     %f',hasil_numerik,kesalahan);
