local commonColors = import 'colors.libsonnet';

{
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
    red_cooler: '#ff7f86',
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

    // Uncommon accent background and foreground pairs
    bg_clay: '#49191a',
    fg_clay: '#f1b090',

    bg_ochre: '#462f20',
    fg_ochre: '#e0d38c',

    bg_lavender: '#38325c',
    fg_lavender: '#dfc0f0',

    bg_sage: '#143e32',
    fg_sage: '#c3e7d4',

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
    fg_paren_match: self.fg_main,
    bg_paren_expression: '#453040',
    underline_paren_match: null,

    //
    // Mappings
    //

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
    bracket: self.fg_main,
    builtin: self.magenta_warmer,
    comment: self.fg_dim,
    constant: self.blue_cooler,
    delimiter: self.fg_main,
    docmarkup: self.magenta_faint,
    docstring: self.cyan_faint,
    fnname: self.magenta,
    keyword: self.magenta_cooler,
    number: self.fg_main,
    operator: self.fg_main,
    preprocessor: self.red_cooler,
    property: self.cyan,
    punctuation: self.fg_main,
    rx_backslash: self.magenta,
    rx_construct: self.green_cooler,
    string: self.blue_warmer,
    type: self.cyan_cooler,
    variable: self.cyan,

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
    date_deadline: self.red_cooler,
    date_deadline_subtle: self.red_faint,
    date_event: self.fg_alt,
    date_holiday: self.magenta_warmer,
    date_holiday_other: self.blue,
    date_now: self.fg_main,
    date_range: self.fg_alt,
    date_scheduled: self.yellow_cooler,
    date_scheduled_subtle: self.yellow_faint,
    date_weekday: self.cyan,
    date_weekend: self.magenta,

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
    bg_prose_block_delimiter: self.bg_dim,
    fg_prose_block_delimiter: self.fg_dim,
    bg_prose_block_contents: self.bg_dim,

    bg_prose_code: null,
    fg_prose_code: self.cyan_cooler,

    bg_prose_macro: null,
    fg_prose_macro: self.magenta_cooler,

    bg_prose_verbatim: null,
    fg_prose_verbatim: self.magenta_warmer,

    prose_done: self.green,
    prose_todo: self.red,

    prose_metadata: self.fg_dim,
    prose_metadata_value: self.fg_alt,

    prose_table: self.fg_alt,
    prose_table_formula: self.magenta_warmer,

    prose_tag: self.magenta_faint,

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
    bg_term_black: '#000000',
    fg_term_black: '#000000',
    bg_term_black_bright: '#595959',
    fg_term_black_bright: '#595959',

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

    bg_term_white: '#a6a6a6',
    fg_term_white: '#a6a6a6',
    bg_term_white_bright: '#ffffff',
    fg_term_white_bright: '#ffffff',

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
  'Vivendi Tinted': self.Vivendi {
    // Basic values
    bg_main: '#0d0e1c',
    bg_dim: '#1d2235',
    fg_main: '#ffffff',
    fg_dim: '#989898',
    fg_alt: '#c6daff',
    bg_active: '#4a4f69',
    bg_inactive: '#2b3045',
    border: '#61647a',

    // Common accent foregrounds
    red: '#ff5f59',
    red_warmer: '#ff6b55',
    red_cooler: '#ff7f86',
    red_faint: '#ef8386',
    red_intense: '#ff5f5f',
    green: '#44bc44',
    green_warmer: '#75c13e',
    green_cooler: '#11c777',
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

    // Uncommon accent background and foreground pairs
    bg_clay: '#49191a',
    fg_clay: '#f1b090',

    bg_ochre: '#462f20',
    fg_ochre: '#e0d09c',

    bg_lavender: '#38325c',
    fg_lavender: '#dfc0f0',

    bg_sage: '#143e32',
    fg_sage: '#83d7ac',

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
    bg_completion: '#483d8a',
    bg_hover: '#45605e',
    bg_hover_secondary: '#64404f',
    bg_hl_line: '#303a6f',
    bg_region: '#555a66',
    fg_region: '#ffffff',

    bg_mode_line_active: '#484d67',
    fg_mode_line_active: '#ffffff',
    border_mode_line_active: '#979797',
    bg_mode_line_inactive: '#292d48',
    fg_mode_line_inactive: '#969696',
    border_mode_line_inactive: '#606270',

    modeline_err: '#ffa9bf',
    modeline_warning: '#dfcf43',
    modeline_info: '#9fefff',

    bg_tab_bar: '#2c3045',
    bg_tab_current: '#0d0e1c',
    bg_tab_other: '#4a4f6a',

    // Diffs
    bg_added: '#003a2f',
    bg_added_faint: '#002922',
    bg_added_refine: '#035542',
    bg_added_fringe: '#23884f',
    fg_added: '#a0e0a0',
    fg_added_intense: '#80e080',

    bg_changed: '#363300',
    bg_changed_faint: '#2a1f00',
    bg_changed_refine: '#4a4a00',
    bg_changed_fringe: '#8f7a30',
    fg_changed: '#efef80',
    fg_changed_intense: '#c0b05f',

    bg_removed: '#4f1127',
    bg_removed_faint: '#380a19',
    bg_removed_refine: '#781a3a',
    bg_removed_fringe: '#b81a26',
    fg_removed: '#ffbfbf',
    fg_removed_intense: '#ff9095',

    bg_diff_context: '#1a1f30',

    // Paren match
    bg_paren_match: '#4f7f9f',
    fg_paren_match: self.fg_main,
    bg_paren_expression: '#453040',
    underline_paren_match: null,

    //
    // Mapping
    //

    // General mappings
    fringe: self.bg_dim,
    cursor: self.magenta_intense,

    keybind: self.magenta_cooler,
    name: self.magenta,
    identifier: self.yellow_faint,

    err: self.red,
    warning: self.yellow,
    info: self.green_cooler,

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
    bracket: self.fg_main,
    builtin: self.magenta,
    comment: self.red_faint,
    constant: self.magenta_cooler,
    delimiter: self.fg_main,
    docmarkup: self.magenta_faint,
    docstring: self.cyan_faint,
    fnname: self.magenta_warmer,
    keyword: self.blue_warmer,
    number: self.fg_main,
    operator: self.fg_main,
    preprocessor: self.red_cooler,
    property: self.cyan_warmer,
    punctuation: self.fg_main,
    rx_backslash: self.magenta_warmer,
    rx_construct: self.magenta_cooler,
    string: self.blue,
    type: self.green_cooler,
    variable: self.cyan_warmer,

    // Accent mappings
    accent_0: self.magenta_cooler,
    accent_1: self.cyan,
    accent_2: self.magenta_warmer,
    accent_3: self.yellow_warmer,

    // Button mappings
    fg_button_active: self.fg_main,
    fg_button_inactive: self.fg_dim,
    bg_button_active: self.bg_active,
    bg_button_inactive: self.bg_dim,

    // Completion mappings
    fg_completion_match_0: self.blue_cooler,
    fg_completion_match_1: self.magenta_warmer,
    fg_completion_match_2: self.cyan_cooler,
    fg_completion_match_3: self.yellow_warmer,
    bg_completion_match_0: null,
    bg_completion_match_1: null,
    bg_completion_match_2: null,
    bg_completion_match_3: null,

    // Date mappings
    date_common: self.cyan,
    date_deadline: self.red_cooler,
    date_deadline_subtle: self.red_faint,
    date_event: self.fg_alt,
    date_holiday: self.magenta_warmer,
    date_holiday_other: self.blue,
    date_now: self.fg_main,
    date_range: self.fg_alt,
    date_scheduled: self.yellow_cooler,
    date_scheduled_subtle: self.yellow_faint,
    date_weekday: self.cyan,
    date_weekend: self.magenta,

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
    mail_cite_1: self.cyan_warmer,
    mail_cite_2: self.cyan_cooler,
    mail_cite_3: self.red_cooler,
    mail_part: self.blue,
    mail_recipient: self.blue_warmer,
    mail_subject: self.magenta_warmer,
    mail_other: self.magenta,

    // Mark mappings
    bg_mark_delete: self.bg_red_subtle,
    fg_mark_delete: self.red_cooler,
    bg_mark_select: self.bg_cyan_subtle,
    fg_mark_select: self.cyan,
    bg_mark_other: self.bg_yellow_subtle,
    fg_mark_other: self.yellow,

    // Prompt mappings
    fg_prompt: self.cyan_warmer,
    bg_prompt: null,

    // Prose mappings
    bg_prose_block_delimiter: self.bg_dim,
    fg_prose_block_delimiter: self.fg_dim,
    bg_prose_block_contents: self.bg_dim,

    bg_prose_code: null,
    fg_prose_code: self.cyan_cooler,

    bg_prose_macro: null,
    fg_prose_macro: self.magenta_cooler,

    bg_prose_verbatim: null,
    fg_prose_verbatim: self.magenta_warmer,

    prose_done: self.green,
    prose_todo: self.red,

    prose_metadata: self.fg_dim,
    prose_metadata_value: self.fg_alt,

    prose_table: self.fg_alt,
    prose_table_formula: self.magenta_warmer,

    prose_tag: self.magenta_faint,

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
    bg_term_black: '#000000',
    fg_term_black: '#000000',
    bg_term_black_bright: '#595959',
    fg_term_black_bright: '#595959',

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

    bg_term_white: '#a6a6a6',
    fg_term_white: '#a6a6a6',
    bg_term_white_bright: '#ffffff',
    fg_term_white_bright: '#ffffff',

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
  'Vivendi Tritanopia': self.Vivendi {
    // Basic values
    bg_main: '#000000',
    bg_dim: '#1e1e1e',
    fg_main: '#ffffff',
    fg_dim: '#989898',
    fg_alt: '#a0d7f2',
    bg_active: '#535353',
    bg_inactive: '#303030',
    border: '#646464',

    // Common accent foregrounds
    red: '#ff5f59',
    red_warmer: '#ff6740',
    red_cooler: '#ff7f86',
    red_faint: '#ff9070',
    red_intense: '#ff5f5f',
    green: '#44bc44',
    green_warmer: '#70b900',
    green_cooler: '#00c06f',
    green_faint: '#88ca9f',
    green_intense: '#44df44',
    yellow: '#cabf00',
    yellow_warmer: '#ffa00f',
    yellow_cooler: '#d8af7a',
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
    magenta_intense: '#ef7fff',
    cyan: '#00d3d0',
    cyan_warmer: '#4ae2ff',
    cyan_cooler: '#6ae4b9',
    cyan_faint: '#7fdbdf',
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

    // Uncommon accent background and foreground pairs
    bg_clay: '#49191a',
    fg_clay: '#f1b090',

    bg_ochre: '#462f20',
    fg_ochre: '#e0d09c',

    bg_lavender: '#38325c',
    fg_lavender: '#dfc0f0',

    bg_sage: '#143e32',
    fg_sage: '#c3e7d4',

    // Graphs
    bg_graph_red_0: '#b52c2c',
    bg_graph_red_1: '#702020',
    bg_graph_green_0: '#afd1c0',
    bg_graph_green_1: '#607a8f',
    bg_graph_yellow_0: '#facfd6',
    bg_graph_yellow_1: '#b57b85',
    bg_graph_blue_0: '#4f9fdf',
    bg_graph_blue_1: '#004559',
    bg_graph_magenta_0: '#b6427f',
    bg_graph_magenta_1: '#7f506f',
    bg_graph_cyan_0: '#57dfea',
    bg_graph_cyan_1: '#00808f',

    // Special purpose
    bg_completion: '#004253',
    bg_hover: '#8e3e3b',
    bg_hover_secondary: '#204853',
    bg_hl_line: '#2f3849',
    bg_region: '#5a5a5a',
    fg_region: '#ffffff',

    bg_mode_line_active: '#003c52',
    fg_mode_line_active: '#f0f0f0',
    border_mode_line_active: '#5f8fb4',
    bg_mode_line_inactive: '#2d2d2d',
    fg_mode_line_inactive: '#969696',
    border_mode_line_inactive: '#606060',

    modeline_err: '#ff7fbf',
    modeline_warning: '#df9f93',
    modeline_info: '#4fcfef',

    bg_tab_bar: '#313131',
    bg_tab_current: '#000000',
    bg_tab_other: '#545454',

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

    bg_removed: '#4f1119',
    bg_removed_faint: '#380a0f',
    bg_removed_refine: '#781a1f',
    bg_removed_fringe: '#b81a1f',
    fg_removed: '#ffbfbf',
    fg_removed_intense: '#ff9095',

    bg_diff_context: '#1a1a1a',

    // Paren match
    bg_paren_match: '#2f7f9f',
    fg_paren_match: self.fg_main,
    bg_paren_expression: '#453040',
    underline_paren_match: null,

    //
    // Mappings
    //

    // General mappings
    fringe: self.bg_dim,
    cursor: self.red_intense,

    keybind: self.red,
    name: self.red_cooler,
    identifier: self.red_faint,

    err: self.red_warmer,
    warning: self.magenta,
    info: self.cyan,

    underline_err: self.red_intense,
    underline_warning: self.magenta_intense,
    underline_note: self.cyan_intense,

    bg_prominent_err: self.bg_red_intense,
    fg_prominent_err: self.fg_main,
    bg_prominent_warning: self.bg_magenta_intense,
    fg_prominent_warning: self.fg_main,
    bg_prominent_note: self.bg_cyan_intense,
    fg_prominent_note: self.fg_main,

    bg_active_argument: self.bg_red_nuanced,
    fg_active_argument: self.red_warmer,
    bg_active_value: self.bg_cyan_nuanced,
    fg_active_value: self.cyan,

    // Code mappings
    bracket: self.fg_main,
    builtin: self.magenta,
    comment: self.red_faint,
    constant: self.green_faint,
    delimiter: self.fg_main,
    docmarkup: self.magenta_faint,
    docstring: self.fg_alt,
    fnname: self.cyan_warmer,
    keyword: self.red_cooler,
    number: self.fg_main,
    operator: self.fg_main,
    preprocessor: self.red_warmer,
    property: self.cyan_cooler,
    punctuation: self.fg_main,
    rx_backslash: self.magenta,
    rx_construct: self.red,
    string: self.cyan,
    type: self.blue_warmer,
    variable: self.cyan_cooler,

    // Accent mappings
    accent_0: self.cyan,
    accent_1: self.red_warmer,
    accent_2: self.cyan_cooler,
    accent_3: self.magenta,

    // Button mappings
    fg_button_active: self.fg_main,
    fg_button_inactive: self.fg_dim,
    bg_button_active: self.bg_active,
    bg_button_inactive: self.bg_dim,

    // Completion mappings
    fg_completion_match_0: self.cyan,
    fg_completion_match_1: self.red_warmer,
    fg_completion_match_2: self.magenta,
    fg_completion_match_3: self.cyan_cooler,
    bg_completion_match_0: null,
    bg_completion_match_1: null,
    bg_completion_match_2: null,
    bg_completion_match_3: null,

    // Date mappings
    date_common: self.cyan_cooler,
    date_deadline: self.red,
    date_deadline_subtle: self.red_faint,
    date_event: self.fg_alt,
    date_holiday: self.red_intense,
    date_holiday_other: self.cyan_warmer,
    date_now: self.fg_main,
    date_range: self.fg_alt,
    date_scheduled: self.magenta,
    date_scheduled_subtle: self.magenta_faint,
    date_weekday: self.cyan,
    date_weekend: self.magenta_warmer,

    // Line number mappings
    fg_line_number_inactive: self.fg_dim,
    fg_line_number_active: self.fg_main,
    bg_line_number_inactive: self.bg_dim,
    bg_line_number_active: self.bg_active,

    // Link mappings
    fg_link: self.cyan,
    bg_link: null,
    underline_link: self.cyan,

    fg_link_symbolic: self.cyan_cooler,
    bg_link_symbolic: null,
    underline_link_symbolic: self.cyan_cooler,

    fg_link_visited: self.magenta,
    bg_link_visited: null,
    underline_link_visited: self.magenta,

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
    bg_mark_delete: self.bg_red_subtle,
    fg_mark_delete: self.red,
    bg_mark_select: self.bg_cyan_subtle,
    fg_mark_select: self.cyan,
    bg_mark_other: self.bg_magenta_subtle,
    fg_mark_other: self.magenta_warmer,

    // Prompt mappings
    fg_prompt: self.cyan_cooler,
    bg_prompt: null,

    // Prose mappings
    bg_prose_block_delimiter: self.bg_dim,
    fg_prose_block_delimiter: self.fg_dim,
    bg_prose_block_contents: self.bg_dim,

    bg_prose_code: null,
    fg_prose_code: self.cyan,

    bg_prose_macro: null,
    fg_prose_macro: self.red_warmer,

    bg_prose_verbatim: null,
    fg_prose_verbatim: self.magenta_warmer,

    prose_done: self.cyan,
    prose_todo: self.red,

    prose_metadata: self.fg_dim,
    prose_metadata_value: self.fg_alt,

    prose_table: self.fg_alt,
    prose_table_formula: self.red_cooler,

    prose_tag: self.fg_alt,

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

    bg_search_rx_group_0: self.bg_blue_intense,
    bg_search_rx_group_1: self.bg_magenta_intense,
    bg_search_rx_group_2: self.bg_cyan_subtle,
    bg_search_rx_group_3: self.bg_red_subtle,

    // Space mappings
    bg_space: null,
    fg_space: self.border,
    bg_space_err: self.bg_red_intense,

    // Terminal mappings
    bg_term_black: '#000000',
    fg_term_black: '#000000',
    bg_term_black_bright: '#595959',
    fg_term_black_bright: '#595959',

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

    bg_term_white: '#a6a6a6',
    fg_term_white: '#a6a6a6',
    bg_term_white_bright: '#ffffff',
    fg_term_white_bright: '#ffffff',

    // Heading mappings
    fg_heading_0: self.cyan_cooler,
    fg_heading_1: self.fg_main,
    fg_heading_2: self.red_faint,
    fg_heading_3: self.cyan_faint,
    fg_heading_4: self.magenta,
    fg_heading_5: self.green_faint,
    fg_heading_6: self.magenta_faint,
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
  'Vivendi Deuteranopia': self.Vivendi {
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
    red_cooler: '#ff7f86',
    red_faint: '#ff9580',
    red_intense: '#ff5f5f',
    green: '#44bc44',
    green_warmer: '#70b900',
    green_cooler: '#00c06f',
    green_faint: '#88ca9f',
    green_intense: '#44df44',
    yellow: '#cabf00',
    yellow_warmer: '#ffa00f',
    yellow_cooler: '#d8af7a',
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

    // Uncommon accent background and foreground pairs
    bg_clay: '#49191a',
    fg_clay: '#f1b090',

    bg_ochre: '#462f20',
    fg_ochre: '#e0d09c',

    bg_lavender: '#38325c',
    fg_lavender: '#dfc0f0',

    bg_sage: '#143e32',
    fg_sage: '#c3e7d4',

    // Graphs
    bg_graph_red_0: '#bf6000',
    bg_graph_red_1: '#733500',
    bg_graph_green_0: '#6fbf8f',
    bg_graph_green_1: '#2f5f4f',
    bg_graph_yellow_0: '#c1c00a',
    bg_graph_yellow_1: '#7f6640',
    bg_graph_blue_0: '#0f90ef',
    bg_graph_blue_1: '#1f2f8f',
    bg_graph_magenta_0: '#7f7f8e',
    bg_graph_magenta_1: '#4f4f5f',
    bg_graph_cyan_0: '#376f9a',
    bg_graph_cyan_1: '#00404f',

    // Special purpose
    bg_completion: '#2f447f',
    bg_hover: '#45605e',
    bg_hover_secondary: '#604c30',
    bg_hl_line: '#2f3849',
    bg_region: '#5a5a5a',
    fg_region: '#ffffff',

    bg_mode_line_active: '#2a2a6a',
    fg_mode_line_active: '#f0f0f0',
    border_mode_line_active: '#8080a7',
    bg_mode_line_inactive: '#2d2d2d',
    fg_mode_line_inactive: '#969696',
    border_mode_line_inactive: '#606060',

    modeline_err: '#e5bf00',
    modeline_warning: '#c0cf35',
    modeline_info: '#abeadf',

    bg_tab_bar: '#313131',
    bg_tab_current: '#000000',
    bg_tab_other: '#545454',

    // Diffs
    bg_added: '#003066',
    bg_added_faint: '#001a4f',
    bg_added_refine: '#0f4a77',
    bg_added_fringe: '#006fff',
    fg_added: '#c4d5ff',
    fg_added_intense: '#8080ff',

    bg_changed: '#2f123f',
    bg_changed_faint: '#1f022f',
    bg_changed_refine: '#3f325f',
    bg_changed_fringe: '#7f55a0',
    fg_changed: '#e3cfff',
    fg_changed_intense: '#cf9fe2',

    bg_removed: '#3d3d00',
    bg_removed_faint: '#281f00',
    bg_removed_refine: '#555500',
    bg_removed_fringe: '#d0c03f',
    fg_removed: '#d4d48f',
    fg_removed_intense: '#d0b05f',

    bg_diff_context: '#1a1a1a',

    // Paren match
    bg_paren_match: '#2f7f9f',
    fg_paren_match: self.fg_main,
    bg_paren_expression: '#453040',
    underline_paren_match: null,

    //
    // Mappings
    //

    // General mappings
    fringe: self.bg_dim,
    cursor: self.yellow_intense,

    keybind: self.blue_cooler,
    name: self.blue_cooler,
    identifier: self.yellow_faint,

    err: self.yellow_warmer,
    warning: self.yellow,
    info: self.blue,

    underline_err: self.yellow_intense,
    underline_warning: self.magenta_faint,
    underline_note: self.cyan,

    bg_prominent_err: self.bg_yellow_intense,
    fg_prominent_err: self.fg_main,
    bg_prominent_warning: self.bg_magenta_intense,
    fg_prominent_warning: self.fg_main,
    bg_prominent_note: self.bg_cyan_intense,
    fg_prominent_note: self.fg_main,

    bg_active_argument: self.bg_yellow_nuanced,
    fg_active_argument: self.yellow_warmer,
    bg_active_value: self.bg_blue_nuanced,
    fg_active_value: self.blue_warmer,

    // Code mappings
    bracket: self.fg_main,
    builtin: self.yellow,
    comment: self.yellow_cooler,
    constant: self.blue_faint,
    delimiter: self.fg_main,
    docmarkup: self.magenta_faint,
    docstring: self.cyan_faint,
    fnname: self.yellow_warmer,
    keyword: self.blue_cooler,
    number: self.fg_main,
    operator: self.fg_main,
    preprocessor: self.magenta_cooler,
    property: self.cyan,
    punctuation: self.fg_main,
    rx_backslash: self.blue_cooler,
    rx_construct: self.yellow_cooler,
    string: self.blue_warmer,
    type: self.cyan_cooler,
    variable: self.cyan,

    // Accent mappings
    accent_0: self.blue_warmer,
    accent_1: self.yellow,
    accent_2: self.cyan_cooler,
    accent_3: self.yellow_cooler,

    // Button mappings
    fg_button_active: self.fg_main,
    fg_button_inactive: self.fg_dim,
    bg_button_active: self.bg_active,
    bg_button_inactive: self.bg_dim,

    // Completion mappings
    fg_completion_match_0: self.blue_cooler,
    fg_completion_match_1: self.yellow,
    fg_completion_match_2: self.cyan_cooler,
    fg_completion_match_3: self.yellow_cooler,
    bg_completion_match_0: null,
    bg_completion_match_1: null,
    bg_completion_match_2: null,
    bg_completion_match_3: null,

    // Date mappings
    date_common: self.cyan,
    date_deadline: self.yellow_warmer,
    date_deadline_subtle: self.red_faint,
    date_event: self.fg_alt,
    date_holiday: self.yellow_warmer,
    date_holiday_other: self.blue,
    date_now: self.fg_main,
    date_range: self.fg_alt,
    date_scheduled: self.yellow_cooler,
    date_scheduled_subtle: self.yellow_faint,
    date_weekday: self.cyan,
    date_weekend: self.magenta_cooler,

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

    fg_link_visited: self.yellow_faint,
    bg_link_visited: null,
    underline_link_visited: self.yellow_faint,

    // Mail mappings
    mail_cite_0: self.blue_warmer,
    mail_cite_1: self.yellow_cooler,
    mail_cite_2: self.cyan_faint,
    mail_cite_3: self.yellow,
    mail_part: self.blue,
    mail_recipient: self.blue,
    mail_subject: self.yellow_warmer,
    mail_other: self.cyan_faint,

    // Mark mappings
    bg_mark_delete: self.bg_yellow_subtle,
    fg_mark_delete: self.yellow,
    bg_mark_select: self.bg_cyan_subtle,
    fg_mark_select: self.cyan,
    bg_mark_other: self.bg_magenta_subtle,
    fg_mark_other: self.magenta_warmer,

    // Prompt mappings
    fg_prompt: self.blue,
    bg_prompt: null,

    // Prose mappings
    bg_prose_block_delimiter: self.bg_dim,
    fg_prose_block_delimiter: self.fg_dim,
    bg_prose_block_contents: self.bg_dim,

    bg_prose_code: null,
    fg_prose_code: self.cyan_cooler,

    bg_prose_macro: null,
    fg_prose_macro: self.magenta_cooler,

    bg_prose_verbatim: null,
    fg_prose_verbatim: self.yellow,

    prose_done: self.blue,
    prose_todo: self.yellow_warmer,

    prose_metadata: self.fg_dim,
    prose_metadata_value: self.fg_alt,

    prose_table: self.fg_alt,
    prose_table_formula: self.yellow_warmer,

    prose_tag: self.fg_alt,

    // Rainbow mappings
    rainbow_0: self.yellow_warmer,
    rainbow_1: self.blue,
    rainbow_2: self.yellow_cooler,
    rainbow_3: self.blue_warmer,
    rainbow_4: self.yellow,
    rainbow_5: self.cyan_warmer,
    rainbow_6: self.yellow_faint,
    rainbow_7: self.blue_faint,
    rainbow_8: self.magenta_faint,

    // Search mappings
    bg_search_current: self.bg_yellow_intense,
    bg_search_lazy: self.bg_blue_intense,
    bg_search_replace: self.bg_yellow_intense,

    bg_search_rx_group_0: self.bg_cyan_intense,
    bg_search_rx_group_1: self.bg_magenta_intense,
    bg_search_rx_group_2: self.bg_blue_subtle,
    bg_search_rx_group_3: self.bg_yellow_subtle,

    // Space mappings
    bg_space: null,
    fg_space: self.border,
    bg_space_err: self.bg_yellow_intense,

    // Terminal mappings
    bg_term_black: '#000000',
    fg_term_black: '#000000',
    bg_term_black_bright: '#595959',
    fg_term_black_bright: '#595959',

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

    bg_term_white: '#a6a6a6',
    fg_term_white: '#a6a6a6',
    bg_term_white_bright: '#ffffff',
    fg_term_white_bright: '#ffffff',

    // Heading mappings
    fg_heading_0: self.cyan_cooler,
    fg_heading_1: self.fg_main,
    fg_heading_2: self.yellow_faint,
    fg_heading_3: self.blue_faint,
    fg_heading_4: self.green_faint,
    fg_heading_5: self.magenta_cooler,
    fg_heading_6: self.yellow_cooler,
    fg_heading_7: self.cyan,
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
}
