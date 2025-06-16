local M = {}

function M.draw()
    local iface_eth = "enp8s0"
    local iface_wifi = "wlo1"  -- on pourra détecter dynamiquement après

    local out = ""

    out = out .. "${voffset 10}${color1}${font :size=14:bold}NETWORK ${hr 2}${font}\n"

    -- Ethernet
    out = out .. string.format("Eth-Up: ${upspeedf %s} KiB/s Eth-Down: ${downspeedf %s} KiB/s\n", iface_eth, iface_eth)
    out = out .. string.format("${upspeedgraph %s 22,155 -l} ${downspeedgraph %s 22,155 -l}\n", iface_eth, iface_eth)

    -- Wifi
    out = out .. string.format("Wifi-Up: ${upspeedf %s} KiB/s Wifi-Down: ${downspeedf %s} KiB/s\n", iface_wifi, iface_wifi)
    out = out .. string.format("${upspeedgraph %s 22,155 -l} ${downspeedgraph %s 22,155 -l}\n", iface_wifi, iface_wifi)

    return out
end

return M
