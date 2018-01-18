try
    mex ./_mcwrap/mcwrap_isosplit5_mex.cpp ./isosplit5.cpp ./isocut5.cpp ./jisotonic5.cpp -output ./isosplit5_mex 
catch err
    warning('Error in compilation. Make sure you are in the correct directory.');
    rethrow(err);
end
