classdef Block
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        volume % meters ^ 3
    end
    
    methods
        function obj = Block(length, height, width)
            arguments
                length double {mustBePositive} % meters
                height double {mustBePositive} % meters
                width double {mustBePositive} % meters
            end
            obj.volume = length * height * width;
        end
    end
end

