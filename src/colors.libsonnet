local commonColors = {
  white: '#ffffff',
  black: '#000000',
  gray35: '#595959',
  gray65: '#a6a6a6',
};

{
  Operandi: {
    appearance: 'light',
    white: commonColors.white,
    black: commonColors.black,
    gray35: commonColors.gray35,
    gray65: commonColors.gray65,

    // Basic values
    bg_main: '#ffffff',
    bg_dim: '#f2f2f2',
    fg_main: '#000000',
    fg_dim: '#595959',
    fg_alt: '#193668',
    bg_active: '#c4c4c4',
    bg_inactive: '#e0e0e0',
    border: '#9f9f9f',

    // Common accent foregrounds
    red: '#a60000',
    red_warmer: '#972500',
    red_cooler: '#a0132f',
    red_faint: '#7f0000',
    red_intense: '#d00000',
    green: '#006800',
    green_warmer: '#316500',
    green_cooler: '#00663f',
    green_faint: '#2a5045',
    green_intense: '#008900',
    yellow: '#6f5500',
    yellow_warmer: '#884900',
    yellow_cooler: '#7a4f2f',
    yellow_faint: '#624416',
    yellow_intense: '#808000',
    blue: '#0031a9',
    blue_warmer: '#3548cf',
    blue_cooler: '#0000b0',
    blue_faint: '#003497',
    blue_intense: '#0000ff',
    magenta: '#721045',
    magenta_warmer: '#8f0075',
    magenta_cooler: '#531ab6',
    magenta_faint: '#7c318f',
    magenta_intense: '#dd22dd',
    cyan: '#005e8b',
    cyan_warmer: '#3f578f',
    cyan_cooler: '#005f5f',
    cyan_faint: '#005077',
    cyan_intense: '#008899',

    // Uncommon accent foregrounds
    rust: '#8a290f',
    gold: '#80601f',
    olive: '#56692d',
    slate: '#2f3f83',
    indigo: '#4a3a8a',
    maroon: '#731c52',
    pink: '#7b435c',

    // Common accent backgrounds
    bg_red_intense: '#ff8f88',
    bg_green_intense: '#8adf80',
    bg_yellow_intense: '#f3d000',
    bg_blue_intense: '#bfc9ff',
    bg_magenta_intense: '#dfa0f0',
    bg_cyan_intense: '#a4d5f9',

    bg_red_subtle: '#ffcfbf',
    bg_green_subtle: '#b3fabf',
    bg_yellow_subtle: '#fff576',
    bg_blue_subtle: '#ccdfff',
    bg_magenta_subtle: '#ffddff',
    bg_cyan_subtle: '#bfefff',

    bg_red_nuanced: '#ffe8e8',
    bg_green_nuanced: '#e0f6e0',
    bg_yellow_nuanced: '#f8f0d0',
    bg_blue_nuanced: '#ecedff',
    bg_magenta_nuanced: '#f8e6f5',
    bg_cyan_nuanced: '#e0f2fa',

    // Uncommon accent backgrounds
    bg_ochre: '#f0e0cc',
    bg_lavender: '#dfdbfa',
    bg_sage: '#c0e7d4',

    // Graphs
    bg_graph_red_0: '#ef7969',
    bg_graph_red_1: '#ffaab4',
    bg_graph_green_0: '#2fe029',
    bg_graph_green_1: '#75ef30',
    bg_graph_yellow_0: '#ffcf00',
    bg_graph_yellow_1: '#f9ff00',
    bg_graph_blue_0: '#7f90ff',
    bg_graph_blue_1: '#9fc6ff',
    bg_graph_magenta_0: '#e07fff',
    bg_graph_magenta_1: '#fad0ff',
    bg_graph_cyan_0: '#70d3f0',
    bg_graph_cyan_1: '#afefff',
    // Special purpose
    bg_completion: '#c0deff',
    bg_hover: '#b2e4dc',
    bg_hover_secondary: '#f5d0a0',
    bg_hl_line: '#dae5ec',
    bg_region: '#bdbdbd',
    fg_region: '#000000',

    bg_char_0: '#7feaff',
    bg_char_1: '#ffaaff',
    bg_char_2: '#dff000',

    bg_mode_line_active: '#c8c8c8',
    fg_mode_line_active: '#000000',
    border_mode_line_active: '#5a5a5a',
    bg_mode_line_inactive: '#e6e6e6',
    fg_mode_line_inactive: '#585858',
    border_mode_line_inactive: '#a3a3a3',

    modeline_err: '#7f0000',
    modeline_warning: '#5f0070',
    modeline_info: '#002580',

    bg_tab_bar: '#dfdfdf',
    bg_tab_current: '#ffffff',
    bg_tab_other: '#c2c2c2',

    // Diffs
    bg_added: '#c1f2d1',
    bg_added_faint: '#d8f8e1',
    bg_added_refine: '#aee5be',
    bg_added_fringe: '#6cc06c',
    fg_added: '#005000',
    fg_added_intense: '#006700',

    bg_changed: '#ffdfa9',
    bg_changed_faint: '#ffefbf',
    bg_changed_refine: '#fac090',
    bg_changed_fringe: '#d7c20a',
    fg_changed: '#553d00',
    fg_changed_intense: '#655000',

    bg_removed: '#ffd8d5',
    bg_removed_faint: '#ffe9e9',
    bg_removed_refine: '#f3b5af',
    bg_removed_fringe: '#d84a4f',
    fg_removed: '#8f1313',
    fg_removed_intense: '#aa2222',

    bg_diff_context: '#f3f3f3',

    // Paren match
    bg_paren_match: '#5fcfff',
    bg_paren_expression: '#efd3f5',
    underline_paren_match: null,

    // Mappings
    fringe: self.bg_dim,
    cursor: self.fg_main,

    keybind: self.blue_cooler,
    name: self.magenta,
    identifier: self.yellow_cooler,

    err: self.red,
    warning: self.yellow_warmer,
    info: self.cyan_cooler,

    underline_err: self.red_intense,
    underline_warning: self.yellow_intense,
    underline_note: self.cyan_intense,

    bg_prominent_err: self.bg_red_intense,
    fg_prominent_err: self.fg_main,
    bg_prominent_warning: self.bg_yellow_intense,
    fg_prominent_warning: self.fg_main,
    bg_prominent_note: self.bg_cyan_intense,
    fg_prominent_note: self.fg_main,

    bg_active_argument: self.bg_yellow_nuanced,
    fg_active_argument: self.yellow_warmer,
    bg_active_value: self.bg_cyan_nuanced,
    fg_active_value: self.cyan_warmer,

    // Code mappings
    builtin: self.magenta_warmer,
    comment: self.fg_dim,
    constant: self.blue_cooler,
    docstring: self.green_faint,
    docmarkup: self.magenta_faint,
    fnname: self.magenta,
    keyword: self.magenta_cooler,
    preprocessor: self.red_cooler,
    string: self.blue_warmer,
    type: self.cyan_cooler,
    variable: self.cyan,
    rx_construct: self.green_cooler,
    rx_backslash: self.magenta,

    // Accent mappings
    accent_0: self.blue,
    accent_1: self.magenta_warmer,
    accent_2: self.cyan,
    accent_3: self.red,

    // Button mappings
    fg_button_active: self.fg_main,
    fg_button_inactive: self.fg_dim,
    bg_button_active: self.bg_active,
    bg_button_inactive: self.bg_dim,

    // Completion mappings
    fg_completion_match_0: self.blue,
    fg_completion_match_1: self.magenta_warmer,
    fg_completion_match_2: self.cyan,
    fg_completion_match_3: self.red,
    bg_completion_match_0: null,
    bg_completion_match_1: null,
    bg_completion_match_2: null,
    bg_completion_match_3: null,

    // Date mappings
    date_common: self.cyan,
    date_deadline: self.red,
    date_event: self.fg_alt,
    date_holiday: self.red_cooler,
    date_holiday_other: self.blue,
    date_now: self.fg_main,
    date_range: self.fg_alt,
    date_scheduled: self.yellow_warmer,
    date_weekday: self.cyan,
    date_weekend: self.red_faint,

    // Line number mappings
    fg_line_number_inactive: self.fg_dim,
    fg_line_number_active: self.fg_main,
    bg_line_number_inactive: self.bg_dim,
    bg_line_number_active: self.bg_active,

    // Link mappings
    fg_link: self.blue_warmer,
    bg_link: null,
    underline_link: self.blue_warmer,

    fg_link_symbolic: self.cyan,
    bg_link_symbolic: null,
    underline_link_symbolic: self.cyan,

    fg_link_visited: self.magenta,
    bg_link_visited: null,
    underline_link_visited: self.magenta,

    // Mail mappings
    mail_cite_0: self.blue_faint,
    mail_cite_1: self.yellow_warmer,
    mail_cite_2: self.cyan_cooler,
    mail_cite_3: self.red_cooler,
    mail_part: self.cyan,
    mail_recipient: self.magenta_cooler,
    mail_subject: self.magenta_warmer,
    mail_other: self.magenta_faint,

    // Mark mappings
    bg_mark_delete: self.bg_red_subtle,
    fg_mark_delete: self.red,
    bg_mark_select: self.bg_cyan_subtle,
    fg_mark_select: self.cyan,
    bg_mark_other: self.bg_yellow_subtle,
    fg_mark_other: self.yellow,

    // Prompt mappings
    fg_prompt: self.cyan_cooler,
    bg_prompt: null,

    // Prose mappings
    prose_block: self.fg_dim,
    prose_code: self.green_cooler,
    prose_done: self.green,
    prose_macro: self.magenta_cooler,
    prose_metadata: self.fg_dim,
    prose_metadata_value: self.fg_alt,
    prose_table: self.fg_alt,
    prose_table_formula: self.magenta_warmer,
    prose_tag: self.magenta_faint,
    prose_todo: self.red,
    prose_verbatim: self.magenta_warmer,

    // Rainbow mappings
    rainbow_0: self.fg_main,
    rainbow_1: self.magenta_intense,
    rainbow_2: self.cyan_intense,
    rainbow_3: self.red_warmer,
    rainbow_4: self.yellow_intense,
    rainbow_5: self.magenta_cooler,
    rainbow_6: self.green_intense,
    rainbow_7: self.blue_warmer,
    rainbow_8: self.magenta_warmer,

    // Search mappings
    bg_search_current: self.bg_yellow_intense,
    bg_search_lazy: self.bg_cyan_intense,
    bg_search_replace: self.bg_red_intense,

    bg_search_rx_group_0: self.bg_blue_intense,
    bg_search_rx_group_1: self.bg_green_intense,
    bg_search_rx_group_2: self.bg_red_subtle,
    bg_search_rx_group_3: self.bg_magenta_subtle,

    // Space mappings
    bg_space: null,
    fg_space: self.border,
    bg_space_err: self.bg_red_intense,

    // Terminal mappings
    bg_term_black: 'black',
    fg_term_black: 'black',
    bg_term_black_bright: 'gray35',
    fg_term_black_bright: 'gray35',

    bg_term_red: self.red,
    fg_term_red: self.red,
    bg_term_red_bright: self.red_warmer,
    fg_term_red_bright: self.red_warmer,

    bg_term_green: self.green,
    fg_term_green: self.green,
    bg_term_green_bright: self.green_cooler,
    fg_term_green_bright: self.green_cooler,

    bg_term_yellow: self.yellow,
    fg_term_yellow: self.yellow,
    bg_term_yellow_bright: self.yellow_warmer,
    fg_term_yellow_bright: self.yellow_warmer,

    bg_term_blue: self.blue,
    fg_term_blue: self.blue,
    bg_term_blue_bright: self.blue_warmer,
    fg_term_blue_bright: self.blue_warmer,

    bg_term_magenta: self.magenta,
    fg_term_magenta: self.magenta,
    bg_term_magenta_bright: self.magenta_cooler,
    fg_term_magenta_bright: self.magenta_cooler,

    bg_term_cyan: self.cyan,
    fg_term_cyan: self.cyan,
    bg_term_cyan_bright: self.cyan_cooler,
    fg_term_cyan_bright: self.cyan_cooler,

    bg_term_white: 'gray65',
    fg_term_white: 'gray65',
    bg_term_white_bright: 'white',
    fg_term_white_bright: 'white',

    // Heading mappings
    fg_heading_0: self.cyan_cooler,
    fg_heading_1: self.fg_main,
    fg_heading_2: self.yellow_faint,
    fg_heading_3: self.fg_alt,
    fg_heading_4: self.magenta,
    fg_heading_5: self.green_faint,
    fg_heading_6: self.red_faint,
    fg_heading_7: self.cyan_warmer,
    fg_heading_8: self.fg_dim,

    bg_heading_0: null,
    bg_heading_1: null,
    bg_heading_2: null,
    bg_heading_3: null,
    bg_heading_4: null,
    bg_heading_5: null,
    bg_heading_6: null,
    bg_heading_7: null,
    bg_heading_8: null,

    overline_heading_0: null,
    overline_heading_1: null,
    overline_heading_2: null,
    overline_heading_3: null,
    overline_heading_4: null,
    overline_heading_5: null,
    overline_heading_6: null,
    overline_heading_7: null,
    overline_heading_8: null,
  },
  Vivendi: {
    appearance: 'dark',

    white: commonColors.white,
    black: commonColors.black,
    gray35: commonColors.gray35,
    gray65: commonColors.gray65,

    // Basic values
    bg_main: '#000000',
    bg_dim: '#1e1e1e',
    fg_main: '#ffffff',
    fg_dim: '#989898',
    fg_alt: '#c6daff',
    bg_active: '#535353',
    bg_inactive: '#303030',
    border: '#646464',

    // Common accent foregrounds
    red: '#ff5f59',
    red_warmer: '#ff6b55',
    red_cooler: '#ff7f9f',
    red_faint: '#ff9580',
    red_intense: '#ff5f5f',
    green: '#44bc44',
    green_warmer: '#70b900',
    green_cooler: '#00c06f',
    green_faint: '#88ca9f',
    green_intense: '#44df44',
    yellow: '#d0bc00',
    yellow_warmer: '#fec43f',
    yellow_cooler: '#dfaf7a',
    yellow_faint: '#d2b580',
    yellow_intense: '#efef00',
    blue: '#2fafff',
    blue_warmer: '#79a8ff',
    blue_cooler: '#00bcff',
    blue_faint: '#82b0ec',
    blue_intense: '#338fff',
    magenta: '#feacd0',
    magenta_warmer: '#f78fe7',
    magenta_cooler: '#b6a0ff',
    magenta_faint: '#caa6df',
    magenta_intense: '#ff66ff',
    cyan: '#00d3d0',
    cyan_warmer: '#4ae2f0',
    cyan_cooler: '#6ae4b9',
    cyan_faint: '#9ac8e0',
    cyan_intense: '#00eff0',

    // Uncommon accent foregrounds
    rust: '#db7b5f',
    gold: '#c0965b',
    olive: '#9cbd6f',
    slate: '#76afbf',
    indigo: '#9099d9',
    maroon: '#cf7fa7',
    pink: '#d09dc0',

    // Common accent backgrounds
    bg_red_intense: '#9d1f1f',
    bg_green_intense: '#2f822f',
    bg_yellow_intense: '#7a6100',
    bg_blue_intense: '#1640b0',
    bg_magenta_intense: '#7030af',
    bg_cyan_intense: '#2266ae',

    bg_red_subtle: '#620f2a',
    bg_green_subtle: '#00422a',
    bg_yellow_subtle: '#4a4000',
    bg_blue_subtle: '#242679',
    bg_magenta_subtle: '#552f5f',
    bg_cyan_subtle: '#004065',

    bg_red_nuanced: '#3a0c14',
    bg_green_nuanced: '#092f1f',
    bg_yellow_nuanced: '#381d0f',
    bg_blue_nuanced: '#12154a',
    bg_magenta_nuanced: '#2f0c3f',
    bg_cyan_nuanced: '#042837',

    // Uncommon accent backgrounds
    bg_ochre: '#442c2f',
    bg_lavender: '#38325c',
    bg_sage: '#0f3d30',

    // Graphs
    bg_graph_red_0: '#b52c2c',
    bg_graph_red_1: '#702020',
    bg_graph_green_0: '#0fed00',
    bg_graph_green_1: '#007800',
    bg_graph_yellow_0: '#f1e00a',
    bg_graph_yellow_1: '#b08940',
    bg_graph_blue_0: '#2fafef',
    bg_graph_blue_1: '#1f2f8f',
    bg_graph_magenta_0: '#bf94fe',
    bg_graph_magenta_1: '#5f509f',
    bg_graph_cyan_0: '#47dfea',
    bg_graph_cyan_1: '#00808f',

    // Special purpose
    bg_completion: '#2f447f',
    bg_hover: '#45605e',
    bg_hover_secondary: '#654a39',
    bg_hl_line: '#2f3849',
    bg_region: '#5a5a5a',
    fg_region: '#ffffff',

    bg_char_0: '#0050af',
    bg_char_1: '#7f1f7f',
    bg_char_2: '#625a00',

    bg_mode_line_active: '#505050',
    fg_mode_line_active: '#ffffff',
    border_mode_line_active: '#959595',
    bg_mode_line_inactive: '#2d2d2d',
    fg_mode_line_inactive: '#969696',
    border_mode_line_inactive: '#606060',

    modeline_err: '#ffa9bf',
    modeline_warning: '#dfcf43',
    modeline_info: '#9fefff',

    bg_tab_bar: '#313131',
    bg_tab_current: '#000000',
    bg_tab_other: '#545454',

    // Diffs
    bg_added: '#00381f',
    bg_added_faint: '#002910',
    bg_added_refine: '#034f2f',
    bg_added_fringe: '#237f3f',
    fg_added: '#a0e0a0',
    fg_added_intense: '#80e080',

    bg_changed: '#363300',
    bg_changed_faint: '#2a1f00',
    bg_changed_refine: '#4a4a00',
    bg_changed_fringe: '#8a7a00',
    fg_changed: '#efef80',
    fg_changed_intense: '#c0b05f',

    bg_removed: '#4f1119',
    bg_removed_faint: '#380a0f',
    bg_removed_refine: '#781a1f',
    bg_removed_fringe: '#b81a1f',
    fg_removed: '#ffbfbf',
    fg_removed_intense: '#ff9095',

    bg_diff_context: '#1a1a1a',

    // Paren match
    bg_paren_match: '#2f7f9f',
    bg_paren_expression: '#453040',
    underline_paren_match: null,

    // Mappings
    // General mappings
    fringe: self.bg_dim,
    cursor: self.fg_main,

    keybind: self.blue_cooler,
    name: self.magenta,
    identifier: self.yellow_faint,

    err: self.red,
    warning: self.yellow_warmer,
    info: self.cyan_cooler,

    underline_err: self.red_intense,
    underline_warning: self.yellow,
    underline_note: self.cyan,

    bg_prominent_err: self.bg_red_intense,
    fg_prominent_err: self.fg_main,
    bg_prominent_warning: self.bg_yellow_intense,
    fg_prominent_warning: self.fg_main,
    bg_prominent_note: self.bg_cyan_intense,
    fg_prominent_note: self.fg_main,

    bg_active_argument: self.bg_yellow_nuanced,
    fg_active_argument: self.yellow_cooler,
    bg_active_value: self.bg_cyan_nuanced,
    fg_active_value: self.cyan_cooler,

    // Code mappings
    builtin: self.magenta_warmer,
    comment: self.fg_dim,
    constant: self.blue_cooler,
    docstring: self.cyan_faint,
    docmarkup: self.magenta_faint,
    fnname: self.magenta,
    keyword: self.magenta_cooler,
    preprocessor: self.red_cooler,
    string: self.blue_warmer,
    type: self.cyan_cooler,
    variable: self.cyan,
    rx_construct: self.green_cooler,
    rx_backslash: self.magenta,

    // Accent mappings
    accent_0: self.blue_cooler,
    accent_1: self.magenta_warmer,
    accent_2: self.cyan_cooler,
    accent_3: self.yellow,

    // Button mappings
    fg_button_active: self.fg_main,
    fg_button_inactive: self.fg_dim,
    bg_button_active: self.bg_active,
    bg_button_inactive: self.bg_dim,

    // Completion mappings
    fg_completion_match_0: self.blue_cooler,
    fg_completion_match_1: self.magenta_warmer,
    fg_completion_match_2: self.cyan_cooler,
    fg_completion_match_3: self.yellow,
    bg_completion_match_0: null,
    bg_completion_match_1: null,
    bg_completion_match_2: null,
    bg_completion_match_3: null,

    // Date mappings
    date_common: self.cyan,
    date_deadline: self.red,
    date_event: self.fg_alt,
    date_holiday: self.red_cooler,
    date_holiday_other: self.blue,
    date_now: self.fg_main,
    date_range: self.fg_alt,
    date_scheduled: self.yellow_warmer,
    date_weekday: self.cyan,
    date_weekend: self.red_faint,

    // Line number mappings
    fg_line_number_inactive: self.fg_dim,
    fg_line_number_active: self.fg_main,
    bg_line_number_inactive: self.bg_dim,
    bg_line_number_active: self.bg_active,

    // Link mappings
    fg_link: self.blue_warmer,
    bg_link: null,
    underline_link: self.blue_warmer,

    fg_link_symbolic: self.cyan,
    bg_link_symbolic: null,
    underline_link_symbolic: self.cyan,

    fg_link_visited: self.magenta,
    bg_link_visited: null,
    underline_link_visited: self.magenta,

    // Mail mappings
    mail_cite_0: self.blue_warmer,
    mail_cite_1: self.yellow_cooler,
    mail_cite_2: self.cyan_cooler,
    mail_cite_3: self.red_cooler,
    mail_part: self.blue,
    mail_recipient: self.magenta_cooler,
    mail_subject: self.magenta_warmer,
    mail_other: self.magenta_faint,

    // Mark mappings
    bg_mark_delete: self.bg_red_subtle,
    fg_mark_delete: self.red_cooler,
    bg_mark_select: self.bg_cyan_subtle,
    fg_mark_select: self.cyan,
    bg_mark_other: self.bg_yellow_subtle,
    fg_mark_other: self.yellow,

    // Prompt mappings
    fg_prompt: self.cyan_cooler,
    bg_prompt: null,

    // Prose mappings
    prose_block: self.fg_dim,
    prose_code: self.cyan_cooler,
    prose_done: self.green,
    prose_macro: self.magenta_cooler,
    prose_metadata: self.fg_dim,
    prose_metadata_value: self.fg_alt,
    prose_table: self.fg_alt,
    prose_table_formula: self.magenta_warmer,
    prose_tag: self.magenta_faint,
    prose_todo: self.red,
    prose_verbatim: self.magenta_warmer,

    // Rainbow mappings
    rainbow_0: self.fg_main,
    rainbow_1: self.magenta_intense,
    rainbow_2: self.cyan_intense,
    rainbow_3: self.red_warmer,
    rainbow_4: self.yellow_intense,
    rainbow_5: self.magenta_cooler,
    rainbow_6: self.green_intense,
    rainbow_7: self.blue_warmer,
    rainbow_8: self.magenta_warmer,

    // Search mappings
    bg_search_current: self.bg_yellow_intense,
    bg_search_lazy: self.bg_cyan_intense,
    bg_search_replace: self.bg_red_intense,
    bg_search_rx_group_0: self.bg_blue_intense,
    bg_search_rx_group_1: self.bg_green_intense,
    bg_search_rx_group_2: self.bg_red_subtle,
    bg_search_rx_group_3: self.bg_magenta_subtle,

    // Space mappings
    bg_space: null,
    fg_space: self.border,
    bg_space_err: self.bg_red_intense,

    // Terminal mappings
    bg_term_black: self.black,
    fg_term_black: self.black,
    bg_term_black_bright: self.gray35,
    fg_term_black_bright: self.gray35,
    bg_term_red: self.red,
    fg_term_red: self.red,
    bg_term_red_bright: self.red_warmer,
    fg_term_red_bright: self.red_warmer,
    bg_term_green: self.green,
    fg_term_green: self.green,
    bg_term_green_bright: self.green_cooler,
    fg_term_green_bright: self.green_cooler,
    bg_term_yellow: self.yellow,
    fg_term_yellow: self.yellow,
    bg_term_yellow_bright: self.yellow_warmer,
    fg_term_yellow_bright: self.yellow_warmer,
    bg_term_blue: self.blue,
    fg_term_blue: self.blue,
    bg_term_blue_bright: self.blue_warmer,
    fg_term_blue_bright: self.blue_warmer,
    bg_term_magenta: self.magenta,
    fg_term_magenta: self.magenta,
    bg_term_magenta_bright: self.magenta_cooler,
    fg_term_magenta_bright: self.magenta_cooler,
    bg_term_cyan: self.cyan,
    fg_term_cyan: self.cyan,
    bg_term_cyan_bright: self.cyan_cooler,
    fg_term_cyan_bright: self.cyan_cooler,
    bg_term_white: self.gray65,
    fg_term_white: self.gray65,
    bg_term_white_bright: self.white,
    fg_term_white_bright: self.white,

    // Heading mappings
    fg_heading_0: self.cyan_cooler,
    fg_heading_1: self.fg_main,
    fg_heading_2: self.yellow_faint,
    fg_heading_3: self.blue_faint,
    fg_heading_4: self.magenta,
    fg_heading_5: self.green_faint,
    fg_heading_6: self.red_faint,
    fg_heading_7: self.cyan_faint,
    fg_heading_8: self.fg_dim,
    bg_heading_0: null,
    bg_heading_1: null,
    bg_heading_2: null,
    bg_heading_3: null,
    bg_heading_4: null,
    bg_heading_5: null,
    bg_heading_6: null,
    bg_heading_7: null,
    bg_heading_8: null,
    overline_heading_0: null,
    overline_heading_1: null,
    overline_heading_2: null,
    overline_heading_3: null,
    overline_heading_4: null,
    overline_heading_5: null,
    overline_heading_6: null,
    overline_heading_7: null,
    overline_heading_8: null,
  },
  'Operandi Tinted': self.Operandi {
    // Basic values
    bg_main: '#fbf7f0',
    bg_dim: '#efe9dd',
    bg_active: '#c9b9b0',
    bg_inactive: '#dfd5cf',
    border: '#9f9690',

    // Special purpose
    bg_completion: '#f0c1cf',
    bg_hover: '#b2e4dc',
    bg_hover_secondary: '#f5d0a0',
    bg_hl_line: '#f1d5d0',
    bg_region: '#c2bcb5',

    bg_mode_line_active: '#cab9b2',
    border_mode_line_active: '#545454',
    bg_mode_line_inactive: '#dfd9cf',
    border_mode_line_inactive: '#a59a94',

    bg_tab_bar: '#e0d4ce',
    bg_tab_current: '#fbf7f0',
    bg_tab_other: '#c8b8b2',

    // Diffs
    bg_added: '#c3ebc1',
    bg_added_faint: '#dcf8d1',
    bg_added_refine: '#acd6a5',
    bg_added_fringe: '#6cc06c',

    bg_changed: '#ffdfa9',
    bg_changed_faint: '#ffefbf',
    bg_changed_refine: '#fac090',
    bg_changed_fringe: '#c0b200',

    bg_removed: '#f4d0cf',
    bg_removed_faint: '#ffe9e5',
    bg_removed_refine: '#f3b5a7',
    bg_removed_fringe: '#d84a4f',

    bg_diff_context: '#efe9df',

    // Paren match
    bg_paren_match: '#7fdfcf',

    // Mappings
    cursor: self.red,

    // Code mappings
    comment: self.red_faint,
  },
  'Vivendi Tinted': self.Vivendi {
    // Basic values
    bg_main: '#0d0e1c',
    bg_dim: '#1d2235',
    bg_active: '#4a4f69',
    bg_inactive: '#2b3045',
    border: '#61647a',

    // Special purpose
    bg_completion: '#483d8a',
    bg_hl_line: '#303a6f',
    bg_region: '#555a66',

    bg_mode_line_active: '#484d67',
    border_mode_line_active: '#979797',
    bg_mode_line_inactive: '#292d48',
    border_mode_line_inactive: '#606270',

    bg_tab_bar: '#2c3045',
    bg_tab_current: '#0d0e1c',
    bg_tab_other: '#4a4f6a',

    // Diffs
    bg_added: '#003a2f',
    bg_added_faint: '#002922',
    bg_added_refine: '#035542',
    bg_added_fringe: '#23884f',

    bg_changed: '#363300',
    bg_changed_faint: '#2a1f00',
    bg_changed_refine: '#4a4a00',
    bg_changed_fringe: '#8f7a30',

    bg_removed: '#4f1127',
    bg_removed_faint: '#380a19',
    bg_removed_refine: '#781a3a',
    bg_removed_fringe: '#b81a26',

    bg_diff_context: '#1a1f30',

    // Mappings
    cursor: self.magenta_warmer,

    // Code mappings
    comment: self.red_faint,
  },
  'Operandi Tritanopia': self.Operandi {
    // Common accent foregrounds
    red_warmer: '#b21100',
    red_faint: '#702000',
    yellow: '#695500',
    yellow_warmer: '#973300',
    yellow_cooler: '#77492f',
    magenta_intense: '#cd22bd',
    cyan_faint: '#004f5f',

    // Graphs
    bg_graph_green_0: '#70c3b0',
    bg_graph_green_1: '#a3dfe5',
    bg_graph_yellow_0: '#d99f9f',
    bg_graph_yellow_1: '#ffb58f',
    bg_graph_blue_0: '#80a0df',
    bg_graph_blue_1: '#9fcaff',
    bg_graph_magenta_0: '#efafcf',
    bg_graph_magenta_1: '#ffdaef',
    bg_graph_cyan_0: '#7fd3ed',
    bg_graph_cyan_1: '#afefff',

    // Special purpose
    bg_completion: '#afdfef',
    bg_hover: '#ffafbc',
    bg_hover_secondary: '#9fdfff',
    bg_hl_line: '#dfeaec',

    bg_char_0: '#ff908f',
    bg_char_1: '#bfbfff',
    bg_char_2: '#5fcfdf',

    bg_mode_line_active: '#afe0f2',
    fg_mode_line_active: '#0f0f0f',
    border_mode_line_active: '#2f4f44',

    modeline_err: '#8f0000',
    modeline_warning: '#6f306f',
    modeline_info: '#00445f',

    // Diffs
    bg_added: '#b5e7ff',
    bg_added_faint: '#c6f6ff',
    bg_added_refine: '#9adcef',
    bg_added_fringe: '#1782cc',
    fg_added: '#005079',
    fg_added_intense: '#0043aa',

    bg_changed: '#eecfdf',
    bg_changed_faint: '#f0dde5',
    bg_changed_refine: '#e0b0d0',
    bg_changed_fringe: '#9f6ab0',
    fg_changed: '#6f1343',
    fg_changed_intense: '#7f0f9f',

    // Mappings
    cursor: self.red_intense,

    keybind: self.red,
    name: self.red_cooler,
    identifier: self.red_faint,

    err: self.red_warmer,
    warning: self.magenta,
    info: self.cyan,

    underline_warning: self.magenta_intense,

    bg_active_argument: self.bg_red_nuanced,
    fg_active_argument: self.red_warmer,
    bg_active_value: self.bg_cyan_nuanced,
    fg_active_value: self.cyan,

    // Code mappings
    comment: self.red_faint,
    constant: self.green_cooler,
    fnname: self.cyan_warmer,
    keyword: self.red_cooler,
    preprocessor: self.red_warmer,
    string: self.cyan,
    type: self.blue_warmer,
    variable: self.cyan_cooler,
    rx_construct: self.red,

    // Accent mappings
    accent_0: self.cyan,
    accent_1: self.red_warmer,
    accent_2: self.cyan_cooler,
    accent_3: self.magenta,

    // Completion mappings
    fg_completion_match_0: self.cyan,
    fg_completion_match_1: self.red_warmer,
    fg_completion_match_2: self.magenta,
    fg_completion_match_3: self.cyan_cooler,

    // Date mappings
    date_common: self.cyan_cooler,
    date_holiday: self.red,
    date_holiday_other: self.cyan,
    date_scheduled: self.magenta,
    date_weekday: self.cyan,
    date_weekend: self.red_faint,

    // Link mappings
    fg_link: self.cyan,
    underline_link: self.cyan,

    fg_link_symbolic: self.cyan_cooler,
    underline_link_symbolic: self.cyan_cooler,

    // Mail mappings
    mail_cite_0: self.cyan_faint,
    mail_cite_1: self.red_faint,
    mail_cite_2: self.magenta_warmer,
    mail_cite_3: self.cyan_warmer,
    mail_part: self.cyan_cooler,
    mail_recipient: self.cyan,
    mail_subject: self.red_cooler,
    mail_other: self.cyan,

    // Mark mappings
    fg_mark_delete: self.red,
    fg_mark_select: self.cyan,

    // Prompt mappings
    fg_prompt: self.cyan_cooler,

    // Prose mappings
    prose_code: self.cyan,
    prose_done: self.cyan,
    prose_macro: self.red_warmer,
    prose_table_formula: self.red_cooler,

    // Rainbow mappings
    rainbow_0: self.cyan,
    rainbow_1: self.red,
    rainbow_2: self.cyan_warmer,
    rainbow_3: self.red_cooler,
    rainbow_4: self.cyan_cooler,
    rainbow_5: self.magenta,
    rainbow_6: self.cyan_faint,
    rainbow_7: self.magenta_faint,
    rainbow_8: self.red_faint,

    // Heading mappings
    fg_heading_0: self.cyan_cooler,
    fg_heading_2: self.red_faint,
    fg_heading_3: self.cyan_faint,
    fg_heading_5: self.green_faint,
    fg_heading_6: self.magenta_faint,
    fg_heading_7: self.cyan_warmer,
  },
  'Vivendi Tritanopia': self.Vivendi {
    // Common accent foregrounds
    red_warmer: '#ff6740',
    red_cooler: '#ff6f9f',
    red_faint: '#ff9070',
    yellow: '#cabf00',
    yellow_warmer: '#ffa00f',
    yellow_cooler: '#d8af7a',
    yellow_faint: '#d2b580',
    magenta_intense: '#ef7fff',
    cyan_warmer: '#4ae2ff',
    cyan_faint: '#7fdbdf',

    // Graphs
    bg_graph_green_0: '#afd1c0',
    bg_graph_green_1: '#607a8f',
    bg_graph_yellow_0: '#facfd6',
    bg_graph_yellow_1: '#b57b85',
    bg_graph_blue_0: '#4f9fdf',
    bg_graph_blue_1: '#004559',
    bg_graph_magenta_0: '#b6427f',
    bg_graph_magenta_1: '#7f506f',
    bg_graph_cyan_0: '#57dfea',

    // Special purpose
    bg_completion: '#004253',
    bg_hover: '#8e3e3b',
    bg_hover_secondary: '#00405f',
    bg_char_0: '#922a00',
    bg_char_1: '#00709f',
    bg_char_2: '#5f3faf',

    bg_mode_line_active: '#003c52',
    fg_mode_line_active: '#f0f0f0',
    border_mode_line_active: '#5f8fb4',

    modeline_err: '#ff7fbf',
    modeline_warning: '#df9f93',
    modeline_info: '#4fcfef',

    // Diffs
    bg_added: '#004254',
    bg_added_faint: '#003042',
    bg_added_refine: '#004f7f',
    bg_added_fringe: '#008fcf',
    fg_added: '#9fdfdf',
    fg_added_intense: '#50c0ef',

    bg_changed: '#2f123f',
    bg_changed_faint: '#1f022f',
    bg_changed_refine: '#3f325f',
    bg_changed_fringe: '#7f55a0',
    fg_changed: '#e3cfff',
    fg_changed_intense: '#cf9fe2',

    // Mappings
    cursor: self.red_intense,

    keybind: self.red,
    name: self.red_cooler,
    identifier: self.red_faint,

    err: self.red_warmer,
    warning: self.magenta,
    info: self.cyan,

    // Code mappings
    builtin: self.magenta,
    comment: self.red_faint,
    constant: self.green_faint,
    fnname: self.cyan_warmer,
    keyword: self.red_cooler,
    preprocessor: self.red_warmer,
    string: self.cyan,
    type: self.blue_warmer,
    variable: self.cyan_cooler,
    rx_construct: self.red,

    // Accent mappings
    accent_0: self.cyan,
    accent_1: self.red_warmer,
    accent_2: self.cyan_cooler,
    accent_3: self.magenta,

    // Completion mappings
    fg_completion_match_0: self.cyan,
    fg_completion_match_1: self.red_warmer,
    fg_completion_match_2: self.magenta,
    fg_completion_match_3: self.cyan_cooler,

    // Date mappings
    date_common: self.cyan_cooler,
    date_deadline: self.red,
    date_holiday: self.red_intense,
    date_holiday_other: self.cyan_warmer,
    date_scheduled: self.magenta,
    date_weekday: self.cyan,
    date_weekend: self.red_faint,

    // Link mappings
    fg_link: self.cyan,
    underline_link: self.cyan,

    fg_link_symbolic: self.cyan_cooler,
    underline_link_symbolic: self.cyan_cooler,

    // Mail mappings
    mail_cite_0: self.cyan_faint,
    mail_cite_1: self.red_faint,
    mail_cite_2: self.magenta_warmer,
    mail_cite_3: self.cyan_warmer,
    mail_part: self.cyan_cooler,
    mail_recipient: self.cyan,
    mail_subject: self.red_cooler,
    mail_other: self.cyan,

    // Mark mappings
    fg_mark_delete: self.red,
    fg_mark_select: self.cyan,
    fg_mark_other: self.magenta_warmer,

    // Prompt mappings
    fg_prompt: self.cyan_cooler,

    // Prose mappings
    prose_code: self.cyan,
    prose_done: self.cyan,
    prose_macro: self.red_warmer,
    prose_table_formula: self.red_cooler,

    // Rainbow mappings
    rainbow_0: self.cyan,
    rainbow_1: self.red,
    rainbow_2: self.cyan_warmer,
    rainbow_3: self.red_cooler,
    rainbow_4: self.cyan_cooler,
    rainbow_5: self.magenta,
    rainbow_6: self.cyan_faint,
    rainbow_7: self.magenta_faint,
    rainbow_8: self.red_faint,

    // Search mappings
    bg_search_current: self.bg_red_intense,
    bg_search_lazy: self.bg_cyan_intense,
    bg_search_replace: self.bg_magenta_intense,

    // Heading mappings
    fg_heading_0: self.cyan_cooler,
    fg_heading_2: self.red_faint,
    fg_heading_3: self.cyan_faint,
    fg_heading_5: self.green_faint,
    fg_heading_6: self.magenta_faint,
    fg_heading_7: self.cyan_faint,
  },
}
