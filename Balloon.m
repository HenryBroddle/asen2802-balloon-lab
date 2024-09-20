classdef Balloon
    %BALLOON Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        volume
        mass
    end
    
    methods
        function obj = Balloon(diameter, depth, substrate_mass, fixture_mass, payload_mass, fluid_mass)
            obj.mass = fixture_mass + substrate_mass + payload_mass + fluid_mass;
            obj.volume = 4/3 * pi * depth/2 * (diameter/2)^2;
        end
    end
end

