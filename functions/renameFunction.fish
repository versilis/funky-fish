function renameFunction -a old new
    functions --copy $old $new
    functions --erase $old
    funcsave $old
    funcsave $new
end
