try
    mex ./_mcwrap/mcwrap_isocut5_mex.cpp ./isocut5.cpp ./jisotonic5.cpp -output ./isocut5_mex 
catch err
    warning('Error in compilation. Make sure you are in the correct directory.');
    rethrow(err);
end