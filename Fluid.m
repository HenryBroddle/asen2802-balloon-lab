classdef Fluid
    %FLUID Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        molar_mass % kilograms/mol
        ideal_constant % Joules/(kg·Kelvin)
    end
    
    methods
        function obj = Fluid(molar_mass, ideal_constant)
            arguments
                molar_mass double {mustBePositive} % grams/mol
                ideal_constant double {mustBePositive} % Joules/(kg·Kelvin)
            end
            %FLUID Construct an instance of this class
            %   Given a Molar Mass and Ideal Gas Constant, returns a Fluid
            %   Model
            obj.molar_mass = molar_mass/1000;
            obj.ideal_constant = ideal_constant;
        end
      
        function rho = density(obj, temperature, pressure)
            %%DENSITY in kilograms/meter^3 (TODO: Confirm units...)
            arguments
                obj % Instance of Fluid (self)
                temperature double {mustBePositive} % Kelvin
                pressure double {mustBePositive} % kPa
            end
           rho = (obj.molar_mass * pressure) / (obj.ideal_constant * temperature);
        end

        function Fb = buoyancy(obj, volume, temperature, pressure)
            %%BUOYANCY in Kilograms (TODO: Confirm units...)
            % Given Volume, Temperature, and Pressue, determines Density
            % using Ideal Gas Law
            arguments
                obj % Instance of Fluid (self)
                volume double {mustBePositive} % meters^3
                temperature double {mustBePositive} % Kelvin
                pressure double {mustBePositive} % kPa
            end
            Fb = obj.density(temperature, pressure) * volume;
        end
    end
end


