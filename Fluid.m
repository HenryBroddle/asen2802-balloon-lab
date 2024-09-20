classdef Fluid
    %FLUID Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        molar_mass
        ideal_constant
    end
    
    methods
        function obj = Fluid(molar_mass, ideal_constant)
            %FLUID Construct an instance of this class
            %   Detailed explanation goes here
            obj.molar_mass = molar_mass/1000;
            obj.ideal_constant = ideal_constant/1000;
        end
        
        function p = density(obj, volume, temperature, pressure) 
           p = pressure * volume * (obj.molar_mass * obj.ideal_constant * temperature)/volume;
        end

        function Fb = bouyancy(obj, volume, temperature, pressure)
            Fb = obj.density(volume, temperature, pressure) * volume;
        end
    end
end

