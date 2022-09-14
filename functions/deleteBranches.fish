function deleteBranches --argument branch_prefix
    if set -q $branch_prefix
        echo "Branch prefix must be provided"
    else
        set -l matched_branches (git branch | string match -r "^\s*$branch_prefix.*" | string trim)
        if test -z "$matched_branches"
            echo "No branches found matching the prefix '$branch_prefix'"
        else
            echo "Delete the following branches? 🤔"
            printf "\t%s\n" $matched_branches
            if _promptUserConfirmation
                git branch -D $matched_branches
            end
        end
    end
end
