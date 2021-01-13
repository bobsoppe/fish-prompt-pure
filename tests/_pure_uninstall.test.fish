source (dirname (status filename))/fixtures/constants.fish
@mesg (_print_filename (status filename))


function setup
    _purge_configs
    _disable_colors
end


@test "init: source uninstall handler"  (
    functions --erase _pure_uninstall
    source (dirname (status filename))/../conf.d/_pure_init.fish
    functions --query _pure_uninstall
) $status -eq $SUCCESS
