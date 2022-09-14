function _promptUserConfirmation
    while true
        read -l -p "set_color brcyan; echo '🔴 Do you want to continue? [y/N] ' ; set_color normal; echo '> '" confirm
        switch $confirm
            case Y y
                return 0
            case '' N n
                return 1
        end
    end
end
