function copyFunction --argument func_name
    if set -q $func_name
        echo "Function name must be provided"
    else
        set -l func_path (functions --details $func_name)
        pbcopy < $func_path
        echo "Copied contents of $func_path to clipboard"
    end
end
