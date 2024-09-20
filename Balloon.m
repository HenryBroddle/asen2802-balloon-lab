classdef Balloon
    %BALLOON Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        volume
        mass
    end
    
    methods
        function obj = Balloon(volume, substrate_mass, fixture_mass, payload_mass, fluid_mass) % *(m^3, g, g, g, g)
            % substrate = balloon material mass, fixture = added mass
            % (string and clip), payload mass = mass of paperclips
            obj.mass = fixture_mass + substrate_mass + payload_mass + fluid_mass;
            obj.volume = volume;
        end
    end
end

