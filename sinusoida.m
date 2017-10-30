classdef sinusoida
    
    properties        
        czestotliwosc        
    end
    methods
        function [obj] =sinusoida(fs)
        if nargin > 0 %Sprawdza czy podalimy argumenty
            if isnumeric(fs) %Sprawdza czy jest to liczba
                obj.czestotliwosc = fs; % Nadanie wartoci properti czestotliwosc
            else 
                error ('Only numbers allowed')
            end
        end
        end
        function [time, krzywa] = getWykres(obj,A,f,fi,czas_symulacji) %Użytkownik podaje argumenty do funkcjii,która będzie tworzyć sinusoide
            time=0:1/obj.czestotliwosc:czas_symulacji; %W cišgu czas_symulacji pobieramy próbki częstotliwoci
            krzywa=A*sin(2*pi*time*f); %Tworzenie sinusoidy
        end
    end
end
