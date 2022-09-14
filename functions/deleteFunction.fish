function deleteFunction -a func_name
    if set -q $func_name
        echo "Function name must be provided"
    else
        echo "Permanently delete function '$func_name'? 🤔"
        if _promptUserConfirmation
            functions -e $func_name
            echo "👍 Successfully deleted function '$func_name'"
        else
            echo "⛔ Cancelling deletion"
        end
    end
end
