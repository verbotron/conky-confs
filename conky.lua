conky.config = {

--  Window Settings

    own_window = true,
    own_window_type = 'desktop',
    own_window_argb_visual = true, --most likely won't work as desired in tandem with 'own_window_type override'.
    own_window_transparent = true, --if ARGB visual is enabled, sets background opacity to 0%.
    own_window_hints = 'undecorated, below, skip_taskbar, skip_pager, sticky', --if 'own_window_type' is set to override, this has no purpose.
    own_window_colour = '000000', --testar se é necessário manter esta linha com 'own_window_transparent = true'.
    own_window_class = 'Conky',
    own_window_title = 'Senta a Púa!',
    minimum_width = 250,
    minimum_height = 0,
    maximum_width = 250,
    gap_x = 20,
    gap_y = 45,
    alignment = 'tr',

--  Font Settings
--  Xft (anti-aliased font)

    use_xft = true,
    font = 'Liberation Sans:size=10',
    xftalpha = 1,
    override_utf8_locale = true, -- Force UTF-8. Requires XFT.
    uppercase = false,

--  ColoUr Settings

    draw_shades = false,
    default_shade_color = '000000', -- Necessário quando 'draw_shades é false?'
    default_outline_color = '000000',
--  default_color = '4b8bad', -- Lithium blue
--  default_color = '678b8b', -- Helium Beam green
--  default_color = '656667', -- Waldorf original colour
--  default_color = '7a7a7a', -- Flame  & BunsenLabs Grey
--  default_color = '929292', -- BunsenLabs Grey
--  default_color = 'C0C0C0', -- BunsenLabs Silver
    default_color = 'BECFCF',-- Dragon Dark foreground
--  default_color = '778899',-- LightSlateGray
--  default_color = 'C0C0C0',-- Silver

--  Borders

    draw_borders = false,
    stippled_borders = 5,
    border_inner_margin = 5,
    border_outer_margin = 0,
    border_width = 2,
    draw_graph_borders = false,
    --default_graph_height = 15,
    --default_graph_width = 40,

--  Misc

    background = true,
    short_units = false,
    no_buffers = true,
    imlib_cache_size = 0,
    double_buffer = true,
    update_interval = 1,
};

conky.text = [[
S Y S T E M  I N F O
$hr
Host:${alignr}$nodename
Uptime:${alignr}$uptime
$hr
RAM:${alignr}$mem / $memmax (${alignr}${memperc}%)
Swap:${alignr}$swap / $swapmax (${alignr}${swapperc}%)
Root:${alignr}${fs_used /} / ${fs_size /} (${alignr}${fs_used_perc /}%)
Home:${alignr}${fs_used /home} / ${fs_size /home} (${alignr}${fs_used_perc /home}%)
CPU Freq:${alignr}$freq_g Ghz
CPU Usage:${alignr}$cpu%
ACPI Temp:${alignr}${acpitemp}°C
##HDD Temp:${alignr}%hddtemp
##CPU Temp:${alignr}$adt746xcpu

P R O C E S S E S
$hr
NAME              PID     CPU%    MEM%
$hr
${top name 1} ${top pid 1} ${top cpu 1} ${top mem 1}
${top name 2} ${top pid 2} ${top cpu 2} ${top mem 2}
${top name 3} ${top pid 3} ${top cpu 3} ${top mem 3}
${top name 4} ${top pid 4} ${top cpu 4} ${top mem 4}

N E T W O R K I N G
$hr
WiFi ${alignc}Up:${upspeed wlp2s0} ${alignr}Down:${downspeed wlp2s0}
Ethernet ${alignc}Up:${upspeed eth0} ${alignr}Down:${downspeed eth0}

##W E A T H E R
##${execpi 600 /home/verbotron/bunsenweather.sh}
]]