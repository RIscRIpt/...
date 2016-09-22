conky.config = {
    alignment = 'top_left',
    background = true,
    border_width = 1,
    cpu_avg_samples = 2,
    color0 = 'ffffff',
    color1 = '5294e2',
    color2 = '2b2e39',
    default_color = 'white',
    default_outline_color = 'white',
    default_shade_color = 'white',
    draw_borders = false,
    draw_graph_borders = true,
    draw_outline = false,
    draw_shades = false,
    double_buffer = true,
    use_xft = true,
    font = 'Source Code Pro for Powerline:size=12',
    gap_x = 0,
    gap_y = 0,
    minimum_height = 5,
    minimum_width = 5,
    net_avg_samples = 2,
    no_buffers = true,
    out_to_console = false,
    out_to_stderr = false,
    extra_newline = false,
    own_window = true,
    own_window_class = 'Conky',
    own_window_type = 'desktop',
    own_window_transparent = true,
    own_window_argb_visual = true,
    pad_percents = 3.0,
    stippled_borders = 0,
    update_interval = 1.0,
    uppercase = false,
    use_spacer = 'left',
    show_graph_scale = false,
    show_graph_range = false
}

conky.text = [[
${color2}│${color0}
${color2}│${color0}
${color2}├─╶${color0} system
${color2}│   ├─╶${color0} distro  ${color1}[${color0} ${distribution}: ${exec uname -rm} ${color1}]${color0}
${color2}│   ├─╶${color0} user    ${color1}[${color0} ${uid_name 1000} ${color1}]
${color2}│   ├─╶${color0} host    ${color1}[${color0} ${nodename} ${color1}]${color0}
${color2}│   ├─╶${color0} terms   ${color1}[${color0} ${user_terms} ${color1}]${color0}
${color2}│   ├─╶${color0} uptime  ${color1}[${color0} ${uptime} ${color1}]${color0}
${color2}│   └─╶${color0} entropy ${color1}[${color0}${entropy_perc}% ${color1}]${color0} ${color1}[${color0} ${entropy_avail}/${entropy_poolsize} ${color1}]${color0}
${color2}│${if_up mlan0}
${color2}├─╶${color0} battery
${color2}│   ├─╶${color0} status ${color1}[${color0} ${battery} ${color1}]${color0}
${color2}│   │   └─╶ ${battery_bar 18, 248}${color0}
${color2}│   └─╶${color0} timeleft ${color1}[${color0} ${battery_time} ${color1}]${color0}
${color2}│${endif}
${color2}└─╶${color0} network ${if_up enp3s0}
${color2}    ├─╶${color0} ip ${color1}[${color0} ${addr enp3s0} ${color1}]${color0}
${color2}    └─╶${color0} usage
${color2}        ├─╶${color0} download ${color1}[${color0} ${downspeed enp3s0} ${color1}]${color0}
${color2}        ├─╶ ${downspeedgraph enp3s0 18, 248 5294e2 5294e2}${color0}
${color2}        │
${color2}        ├─╶${color0} upload   ${color1}[${color0} ${upspeed enp3s0} ${color1}]${color0}
${color2}        └─╶ ${upspeedgraph enp3s0 18, 248 5294e2 5294e2}${color0}
${else} ${if_up mlan0}
${color2}    ├─╶${color0} ip ${color1}[${color0} ${addr mlan0} ${color1}]${color0}
${color2}    ├─╶${color0} usage
${color2}    │   ├─╶${color0} download ${color1}[${color0} ${downspeed mlan0} ${color1}]${color0}
${color2}    │   ├─╶ ${downspeedgraph mlan0 18, 248 5294e2 5294e2}${color0}
${color2}    │   │
${color2}    │   ├─╶${color0} upload   ${color1}[${color0} ${upspeed mlan0} ${color1}]${color0}
${color2}    │   └─╶ ${upspeedgraph mlan0 18, 248 5294e2 5294e2}${color0}
${color2}    └─╶${color0} wireless
${color2}        ├─╶${color0} essid   ${color1}[${color0} ${wireless_essid mlan0} ${color1}]${color0}
${color2}        ├─╶${color0} bitrate ${color1}[${color0} ${wireless_bitrate mlan0} ${color1}]${color0}
${color2}        ├─╶${color0} mode    ${color1}[${color0} ${wireless_mode mlan0} ${color1}]${color0}
${color2}        ├─╶${color0} quality ${color1}[${color0} ${wireless_link_qual}  ( ${wireless_link_qual_perc mlan0}% ) ${color1}]${color0}
${color2}        └─╶ ${wireless_link_bar 18, 248 mlan0}${color0}
${endif}
${voffset 374}
${color2}┌─╶ tti_schedule
${color2}│   │     time       class                           name
${color2}│
${color2}│
${color2}│
${color2}│
${color2}│
${color2}│
${color2}│
${color2}│
${color2}│
${color2}│
${voffset -222}${color2}${font Source Code Pro}${execi 1800 tti_schedule_conky}
${voffset 8}${offset 32}${font Source Sans Pro:pixelsize=120}${color0}${time %H:%M}${font}${voffset -75}${offset 16}${font Source Sans Pro:pixelsize=42}${color1}${time %d}${font}${voffset -18}${offset 8}${font Source Sans Pro:pixelsize=22}${color2}${time %B} ${time %Y}${font}${voffset 20}${offset -200}${font Source Sans Pro:pixelsize=58}${time %A}${font}
]]

