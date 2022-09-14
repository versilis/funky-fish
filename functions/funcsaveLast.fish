function funcsaveLast
    set -l function_name (lastFunctionName)
    echo "Save function '$function_name'? 🤔"
    if _promptUserConfirmation
        funcsave $function_name
        echo "Function '$function_name' saved 🎉"
    else
        echo "Cancelling save of function '$function_name'. ⛔"
    end
end

