conky.config = {
    alignment = 'top_right',
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
${alignr}${color2}│${color0}
${alignr}${color2}│${color0}
${alignr}cpu ${color2}╴─┤${color0}
${alignr}${color1}[${color0} ${execi 1000 cat /proc/cpuinfo | grep "model name" | sed -e 's/model name.*: //'| uniq} ${color1}]${color0} ${color2}╴─┤   │${color0}
${alignr}${color1}[${color0}${cpu cpu0}% ${color1}]${color0} use ${color2}╴─┤   │${color0}
${alignr}${color2}${cpugraph 18, 221 5294e2 5294e2}${color0}${color2} ╴─┘   │   │${color0}
${alignr}temp ${color2}╴─┘   │${color0}
${alignr}${color1}[${color0} ${exec sensors | grep "Physical id 0: " | cut -c 18-21} C ${color1}]${color0} ${color2}╴─┘       │${color0}
${alignr}${color2}│${color0}
${alignr}processes ${color2}╴─┤${color0}
${alignr}${color1}[${color0}${color0}$processes ${color1}]${color0}   total ${color2}╴─┤   │${color0}
${alignr}${color1}[${color0}$running_processes ${color1}]${color0} running ${color2}╴─┤   │${color0}
${alignr}top ${color2}╴─┘   │${color0}
${alignr}${color2}name                cpu    mem   pid     │       │${color0}
${alignr}${color1}[${color0} ${top name 1} ${top cpu 1} ${top mem 1} ${top pid 1} ${color1}]${color0} ${color2}╴─┤       │${color0}
${alignr}${color1}[${color0} ${top name 2} ${top cpu 2} ${top mem 2} ${top pid 2} ${color1}]${color0} ${color2}╴─┤       │${color0}
${alignr}${color1}[${color0} ${top name 3} ${top cpu 3} ${top mem 3} ${top pid 3} ${color1}]${color0} ${color2}╴─┤       │${color0}
${alignr}${color1}[${color0} ${top name 4} ${top cpu 4} ${top mem 4} ${top pid 4} ${color1}]${color0} ${color2}╴─┤       │${color0}
${alignr}${color1}[${color0} ${top name 5} ${top cpu 5} ${top mem 5} ${top pid 5} ${color1}]${color0} ${color2}╴─┤       │${color0}
${alignr}${color1}[${color0} ${top name 6} ${top cpu 6} ${top mem 6} ${top pid 6} ${color1}]${color0} ${color2}╴─┤       │${color0}
${alignr}${color1}[${color0} ${top name 7} ${top cpu 7} ${top mem 7} ${top pid 7} ${color1}]${color0} ${color2}╴─┤       │${color0}
${alignr}${color1}[${color0} ${top name 8} ${top cpu 8} ${top mem 8} ${top pid 8} ${color1}]${color0} ${color2}╴─┘       │${color0}
${alignr}${color2}│${color0}
${alignr}memory ${color2}╴─┤${color0}
${alignr}${color1}[${color0} $mem / $memmax ${color1}]${color0} ${color1}[${color0}$memperc% ${color1}]${color0} ram ${color2}╴─┤   │${color0}
${alignr}${color2}${memgraph 18, 248 5294e2 5294e2}${color0} ${color2}╴─┘   │   │${color0}
${alignr}swap ${color2}╴─┘   │${color0}
${alignr}${color1}[${color0} $swap / $swapmax ${color1}]${color0} ${color2}╴─┘       │${color0}
${alignr}${color2}│${color0}
${alignr}disk ${color2}╴─┘${color0}
${alignr}partitions ${color2}╴─┤    ${color0}
${alignr}/ ${color2}╴─┤   │    ${color0}
${alignr}${color1}[${color0} ${fs_used /} / ${fs_size /} ${color1}]${color0} ${color2}╴─┘   │   │    ${color0}
${alignr}/mnt/windows ${color2}╴─┘   │    ${color0}
${alignr}${color1}[${color0} ${fs_used /mnt/windows} / ${fs_size /mnt/windows} ${color1}]${color0} ${color2}╴─┘       │    ${color0}
${alignr}usage ${color2}╴─┘    ${color0}
${alignr}${color1}[${color0} ${diskio_read} ${color1}]${color0}  read ${color2}╴─┤        ${color0}
${alignr}${color2}${diskiograph_read 18, 248 5294e2 5294e2}${color0} ${color2}╴─┘   │        ${color0}
${alignr}${color1}[${color0} ${diskio_write} ${color1}]${color0} write ${color2}╴─┘        ${color0}
${alignr}${color2}${diskiograph_write 18, 248 5294e2 5294e2}${color0} ${color2}╴─┘            ${color0}
]]

