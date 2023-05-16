%Function[return vector] = function_name(argument list)

function y = editer_test_function(x)
if ~isvector(x)
    error("input must be a vector")
end
y = sum(x) / length(x);
end