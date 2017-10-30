clear all
close all
clc

A=1; %Amplitura
czas_symulacji=1; %Czas naszej symulacji
fi=0;  %Przesunięcie
f=10;  %Częstotliwoć
fs=1000; %Częstotliwoć próbkowania

ABC=sinusoida(fs); %Tworzenie obiektu
[time, krzywa]= ABC.getWykres(A,f,fi,czas_symulacji); %Wywołanie metody getWykres
figure('Name', 'Sinusoida')
plot (time,krzywa, 'b'),title('A=1HZ, Czas symulacji =1s,Częstotliwoć =10Hz, Częstotliwoć próbkowania=1000');
xlabel('Czas [s]'),ylabel('Amplituda');
