classdef Balloon
    %BALLOON Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        volume % meters^3
        mass % kilograms
    end
    
    methods
        function obj = Balloon(volume, substrate_mass, fixture_mass, fluid_mass, payload_mass)
            arguments
              volume double {mustBePositive} % meters^3 - Volume displaced by balloon
              substrate_mass double {mustBePositive} % grams - Mass of balloon material
              fixture_mass double {mustBePositive} % grams - Mass of string and fastening clip
              fluid_mass double {mustBePositive} % grams - Mass of payload at neutral buoyancy
              payload_mass double {mustBePositive} = 0 % grams - (Optional)Mass of payload. Default = 0
           end 
            obj.mass = fixture_mass/1000 + substrate_mass/1000 + payload_mass/1000 + fluid_mass/1000;
            obj.volume = volume;
        end

    end
end

