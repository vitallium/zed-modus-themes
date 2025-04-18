local commonColors = import 'colors.libsonnet';

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

    // Uncommon accent background and foreground pairs
    bg_clay: '#f1c8b5',
    fg_clay: '#63192a',
    bg_ochre: '#f0e3c0',
    fg_ochre: '#573a30',
    bg_lavender: '#dfcdfa',
    fg_lavender: '#443379',
    bg_sage: '#c0e7d4',
    fg_sage: '#124b41',

    // Graphs
    bg_graph_red_0: '#ef7969',
    bg_graph_red_1: '#ffaab4',
    bg_graph_green_0: '#45c050',
    bg_graph_green_1: '#75ef30',
    bg_graph_yellow_0: '#ffcf00',
    bg_graph_yellow_1: '#f9ff00',
    bg_graph_blue_0: '#7f90ff',
    bg_graph_blue_1: '#a6c0ff',
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
    fg_region: self.fg_main,

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

    // General mappings
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
    bracket: self.fg_main,
    builtin: self.magenta_warmer,
    comment: self.fg_dim,
    constant: self.blue_cooler,
    delimiter: self.fg_main,
    docmarkup: self.magenta_faint,
    docstring: self.green_faint,
    fnname: self.magenta,
    keyword: self.magenta_cooler,
    number: self.fg_main,
    operator: self.fg_main,
    preprocessor: self.red_cooler,
    punctuation: self.fg_main,
    rx_backslash: self.magenta,
    rx_construct: self.green_cooler,
    string: self.blue_warmer,
    type: self.cyan_cooler,
    variable: self.cyan,

    // Paren match
    bg_paren_match: self.bg_cyan_subtle,
    fg_paren_match: self.fg_main,
    underline_paren_match: null,
    bg_paren_expression: self.bg_yellow_nuanced,

    // Accent mappings
    accent_0: self.blue,
    accent_1: self.magenta_warmer,
    accent_2: self.cyan,
    accent_3: self.red,

    // Button mappings
    fg_button_active: self.fg_main,
    fg_button_inactive: self.fg_dim,
    bg_button_active: self.bg_active,
    bg_button_hover: self.bg_hover,  // Added manually
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
    date_deadline: self.red_cooler,
    date_deadline_subtle: self.red_faint,
    date_event: self.fg_alt,
    date_holiday: self.red,
    date_holiday_other: self.blue,
    date_now: self.fg_main,
    date_range: self.fg_alt,
    date_scheduled: self.yellow,
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
  'Operandi Tinted': self.Operandi {
    // Basic values
    bg_main: '#fbf7f0',
    bg_dim: '#efe9dd',
    fg_dim: '#6c6c6c',  // Added manually
    bg_active: '#c9b9b0',
    bg_inactive: '#dfd5cf',
    border: '#9f9690',

    // Common accent foregrounds
    green: '#006300',
    green_warmer: '#306010',
    green_cooler: '#00603f',
    yellow: '#6d5000',
    yellow_warmer: '#894000',
    yellow_cooler: '#603238',
    yellow_faint: '#574316',
    blue_warmer: '#3546c2',
    cyan: '#00598b',
    cyan_warmer: '#32548f',
    cyan_faint: '#304463',

    // Special purpose
    bg_completion: '#f0c1cf',
    bg_hover: '#b2e4dc',
    bg_hover_secondary: '#dfe09f',
    bg_hl_line: '#f1d5d0',
    bg_region: '#c2bcb5',

    bg_mode_line_active: '#cab9b2',
    border_mode_line_active: '#545454',
    bg_mode_line_inactive: '#dfd9cf',
    fg_mode_line_inactive: '#585858',
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
    bg_paren_expression: '#efd3f5',

    //
    // Mappings
    //

    // General mappings
    cursor: self.red_intense,

    identifier: self.yellow_faint,

    warning: self.yellow,
    info: self.green,

    // Code mappings
    comment: self.red_faint,
    builtin: self.magenta,
    constant: self.magenta_cooler,
    docstring: self.cyan_faint,
    fnname: self.yellow_cooler,
    keyword: self.blue,
    preprocessor: self.yellow_warmer,
    rx_backslash: self.magenta_warmer,
    rx_construct: self.magenta_cooler,
    string: self.cyan,
    type: self.green_cooler,
    variable: self.green_warmer,

    // Mail mappings
    mail_cite_1: self.yellow,
    mail_cite_2: self.green_warmer,

    // Prompt mappings
    fg_prompt: self.green_cooler,

    // Prose mappings
    fg_prose_code: self.green_cooler,
    fg_prose_macro: self.blue_cooler,
    fg_prose_verbatim: self.yellow_warmer,

    // Heading mappings
    fg_heading_0: self.green_cooler,
  },
  'Operandi Tritanopia': self.Operandi {
    red_warmer: '#b21100',
    red_faint: '#702000',
    yellow: '#695500',
    yellow_warmer: '#973300',
    yellow_cooler: '#77492f',
    magenta_intense: '#cd22bd',
    cyan_faint: '#004f5f',

    fg_alt: '#024960',

    bg_graph_green_0: '#68c0a0',
    bg_graph_green_1: '#a5dfd0',
    bg_graph_yellow_0: '#d99f9f',
    bg_graph_yellow_1: '#ffb58f',
    bg_graph_blue_1: '#a8cfff',

    // Special purpose
    bg_completion: '#afdfef',
    bg_hover: '#ffafbc',
    bg_hover_secondary: '#abdfdd',
    bg_hl_line: '#dfeaec',

    bg_mode_line_active: '#afe0f2',
    fg_mode_line_active: '#0f0f0f',
    border_mode_line_active: '#2f4f44',

    modeline_err: '#8f0000',
    modeline_warning: '#6f306f',
    modeline_info: '#00445f',

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

    cursor: self.red_intense,

    keybind: self.red,
    name: self.red_cooler,
    identifier: self.red_faint,

    err: self.red_warmer,
    warning: self.magenta,
    info: self.cyan,

    underline_warning: self.magenta_intense,

    bg_prominent_warning: self.bg_magenta_intense,

    bg_active_argument: self.bg_red_nuanced,
    fg_active_argument: self.red_warmer,

    builtin: self.magenta,
    comment: self.red_faint,
    constant: self.green_cooler,
    docstring: self.fg_alt,
    fnname: self.cyan_warmer,
    keyword: self.red_cooler,
    preprocessor: self.red_warmer,
    rx_construct: self.red,
    string: self.cyan,
    variable: self.cyan_cooler,

    accent_0: self.cyan,
    accent_1: self.red_warmer,
    accent_2: self.cyan_cooler,
    accent_3: self.magenta,

    fg_completion_match_0: self.cyan,
    fg_completion_match_1: self.red_warmer,
    fg_completion_match_2: self.magenta,
    fg_completion_match_3: self.cyan_cooler,

    date_common: self.cyan_cooler,
    date_deadline: self.red,
    date_holiday: self.red,
    date_holiday_other: self.cyan,
    date_scheduled: self.magenta,
    date_weekend: self.magenta_warmer,

    fg_link: self.cyan,
    underline_link: self.cyan,

    fg_link_symbolic: self.cyan_cooler,
    underline_link_symbolic: self.cyan_cooler,

    // Mail mappings
    mail_cite_0: self.cyan_cooler,
    mail_cite_1: self.yellow_cooler,
    mail_cite_2: self.cyan,
    mail_part: self.magenta_cooler,
    mail_recipient: self.blue_warmer,
    mail_subject: self.red_cooler,
    mail_other: self.magenta,

    fg_mark_delete: self.red,
    fg_mark_select: self.cyan,
    fg_mark_other: self.magenta,

    fg_prompt: self.cyan_cooler,

    fg_prose_code: self.cyan,
    fg_prose_macro: self.red_warmer,
    prose_done: self.cyan,
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

    bg_search_replace: self.bg_yellow_intense,

    bg_search_rx_group_1: self.bg_magenta_intense,
    bg_search_rx_group_2: self.bg_cyan_subtle,
    bg_search_rx_group_3: self.bg_red_subtle,

    fg_heading_0: self.cyan_cooler,
    fg_heading_2: self.red_faint,
    fg_heading_3: self.cyan_faint,
    fg_heading_6: self.magenta_faint,
    fg_heading_7: self.cyan_warmer,

    // Paren match
    bg_paren_expression: self.bg_yellow_nuanced,
  },
  'Operandi Deuteranopia': self.Operandi {
    yellow: '#695500',
    yellow_warmer: '#973300',
    yellow_cooler: '#77492f',
    yellow_faint: '#624416',
    yellow_intense: '#808000',

    // Graphs
    bg_graph_red_0: '#d0b029',
    bg_graph_red_1: '#e0cab4',
    bg_graph_green_0: '#8ac050',
    bg_graph_green_1: '#afdfa5',
    bg_graph_magenta_0: '#b0b0d0',
    bg_graph_magenta_1: '#d0dfdf',
    bg_graph_cyan_0: '#6faad9',
    bg_graph_cyan_1: '#bfe0ff',

    // Special purpose
    bg_hover_secondary: '#e5d7a0',
    bg_mode_line_active: '#d0d6ff',
    fg_mode_line_active: '#0f0f0f',
    border_mode_line_active: '#4f4f74',

    modeline_err: '#603a00',
    modeline_warning: '#454500',
    modeline_info: '#023d92',

    bg_added: '#d5d7ff',
    bg_added_faint: '#e6e6ff',
    bg_added_refine: '#babcef',
    bg_added_fringe: '#275acc',
    fg_added: '#303099',
    fg_added_intense: '#0303cc',

    bg_removed: '#f4f099',
    bg_removed_faint: '#f6f6b7',
    bg_removed_refine: '#ede06f',
    bg_removed_fringe: '#c0b200',
    fg_removed: '#553d00',
    fg_removed_intense: '#7f6f00',

    // Mappings
    // Code mappings
    builtin: self.yellow,
    constant: self.blue_faint,
    fnname: self.yellow_warmer,
    keyword: self.blue_cooler,
    preprocessor: self.magenta_cooler,

    // Accent mappings
    accent_0: self.blue_warmer,
    accent_1: self.yellow_warmer,
    accent_2: self.cyan,
    accent_3: self.yellow_cooler,

    // Completion mappings
    fg_completion_match_0: self.blue_warmer,
    fg_completion_match_3: self.yellow_cooler,

    // Date mappings
    date_weekend: self.blue_cooler,

    // Prose mappings
    fg_prose_verbatim: self.yellow,
    prose_tag: self.fg_alt,

    // Heading mappings
    fg_heading_3: self.blue_faint,
    fg_heading_4: self.green_faint,
    fg_heading_5: self.magenta_cooler,
    fg_heading_6: self.yellow_cooler,
    fg_heading_7: self.cyan,
  },
}
