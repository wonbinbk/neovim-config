function network_control
    if test (count $argv) -ne 2
        echo "Usage: network_control <interface> <connect|disconnect>"
        return 1
    end

    set interface $argv[1]
    set control $argv[2]

    if test "$control" != "connect" -a "$control" != "disconnect"
        echo "Error: control must be 'connect' or 'disconnect'"
        return 1
    end

    nmcli device $control $interface
end
