classdef Shape
    properties
        height
        width
    end
    methods(Static)
        function out = setGetNumShapes(data)
            persistent Var;
            if isempty(Var)
                Var = 0;
            end
            if nargin
                Var = Var + data
            end
            out = Var;
        end
    end
    methods
        function obj = Shape(height, width)
            obj.height = height
            obj.width = width
            obj.setGetNumShapes(1);
        end
        function disp(obj)
            fprintf('Height : %.2f / Width : %.2f\n', ...
            obj.height, obj.width);
        end
        function area = getArea(obj)
            area = obj.height * obj.width;
        end
        function tf = gt(obja, objb)
            tf = obja.getArea > objb.getArea
        end
    end
end