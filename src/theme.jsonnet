local colors = import 'colors.libsonnet';

local addAlpha(color, alpha) =
  if std.length(color) == 7 then
    color + std.format('%02x', std.floor(alpha * 255))
  else if std.length(color) == 9 then
    color[:-2] + std.format('%02x', std.floor(alpha * 255))
  else
    color;

local makeTheme(name, colorScheme) = {
  name: 'Modus ' + name,
  appearance: colorScheme.appearance,
  style: {
    text: colorScheme.fg_main,
    'text.muted': colorScheme.fg_alt,
    'text.placeholder': colorScheme.fg_dim,
    'text.disabled': colorScheme.fg_alt,
    'text.accent': colorScheme.fg_alt,

    icon: colorScheme.fg_main,
    'icon.muted': colorScheme.fg_alt,
    'icon.disabled': colorScheme.fg_dim,
    'icon.placeholder': colorScheme.fg_dim,
    'icon.accent': colorScheme.fg_alt,

    border: colorScheme.border,
    'border.variant': colorScheme.border,

    // Panels and other UI elements
    'elevated_surface.background': colorScheme.bg_button_inactive,
    'surface.background': colorScheme.bg_button_inactive,
    background: colorScheme.bg_main,
    'element.background': colorScheme.bg_button_inactive,
    'element.hover': colorScheme.bg_button_hover,
    'element.active': colorScheme.bg_button_active,
    'element.selected': colorScheme.bg_button_active,
    'element.disabled': colorScheme.bg_button_inactive,
    'drop_target.background': addAlpha(colorScheme.bg_active, 0.55),
    'ghost_element.background': colorScheme.bg_button_inactive,
    'ghost_element.hover': colorScheme.bg_button_hover,
    'ghost_element.active': colorScheme.bg_button_active,
    'ghost_element.selected': colorScheme.bg_button_active,
    'ghost_element.disabled': colorScheme.bg_button_inactive,
    'title_bar.background': colorScheme.bg_main,
    'title_bar.inactive_background': colorScheme.bg_dim,
    'panel.background': colorScheme.bg_main,
    'toolbar.background': colorScheme.bg_main,
    'status_bar.background': colorScheme.bg_mode_line_inactive,

    // Tab Bar
    'tab_bar.background': colorScheme.bg_tab_bar,
    'tab.inactive_background': colorScheme.bg_tab_other,
    'tab.active_background': colorScheme.bg_tab_current,

    // Editor
    'editor.background': colorScheme.bg_main,
    'editor.foreground': colorScheme.fg_main,
    'editor.subheader.background': colorScheme.bg_mode_line_active,
    'editor.highlighted_line.background': colorScheme.bg_hl_line,
    'editor.active_line.background': colorScheme.bg_hl_line,
    'editor.line_number': colorScheme.fg_line_number_inactive,
    'editor.active_line_number': colorScheme.fg_line_number_active,
    'editor.gutter.background': colorScheme.bg_line_number_inactive,
    'search.match_background': colorScheme.bg_search_current,
    'scrollbar.thumb.background': addAlpha(colorScheme.bg_mode_line_active, 0.55),
    'scrollbar.thumb.hover_background': colorScheme.bg_active,
    'scrollbar.thumb.border': colorScheme.border,
    'scrollbar.track.background': colorScheme.bg_dim,
    'scrollbar.track.border': colorScheme.border,

    conflict: colorScheme.fg_changed,
    'conflict.background': colorScheme.bg_changed,
    'conflict.border': colorScheme.border,
    created: colorScheme.fg_added,
    'created.background': colorScheme.bg_added,
    'created.border': colorScheme.border,
    deleted: colorScheme.fg_removed,
    'deleted.background': colorScheme.bg_removed,
    'deleted.border': colorScheme.border,
    renamed: colorScheme.fg_changed,
    'renamed.background': colorScheme.bg_changed,
    'renamed.border': colorScheme.border,
    modified: colorScheme.fg_changed,
    'modified.background': colorScheme.bg_changed,
    'modified.border': colorScheme.border,

    warning: colorScheme.warning,
    'warning.background': colorScheme.bg_prominent_warning,
    'warning.border': colorScheme.border,
    info: colorScheme.blue_cooler,
    'info.background': colorScheme.bg_blue_intense,
    'info.border': colorScheme.border,
    'error': colorScheme.err,
    'error.background': colorScheme.bg_prominent_err,
    'error.border': colorScheme.border,
    hint: colorScheme.fg_dim,
    'hint.background': colorScheme.bg_cyan_intense,
    'hint.border': colorScheme.border,

    predictive: colorScheme.fg_dim,
    'predictive.background': colorScheme.bg_prompt,
    'predictive.border': colorScheme.border,

    // Terminal
    'terminal.background': colorScheme.bg_main,
    'terminal.foreground': colorScheme.fg_main,
    'terminal.bright_foreground': colorScheme.fg_alt,
    'terminal.dim_foreground': colorScheme.fg_dim,
    'terminal.ansi.black': colorScheme.bg_term_black,
    'terminal.ansi.bright_black': colorScheme.bg_term_black_bright,
    'terminal.ansi.dim_black': null,
    'terminal.ansi.red': colorScheme.bg_term_red,
    'terminal.ansi.bright_red': colorScheme.bg_term_red_bright,
    'terminal.ansi.dim_red': null,
    'terminal.ansi.green': colorScheme.bg_term_green,
    'terminal.ansi.bright_green': colorScheme.bg_term_green_bright,
    'terminal.ansi.dim_green': null,
    'terminal.ansi.yellow': colorScheme.bg_term_yellow,
    'terminal.ansi.bright_yellow': colorScheme.bg_term_yellow_bright,
    'terminal.ansi.dim_yellow': null,
    'terminal.ansi.blue': colorScheme.bg_term_blue,
    'terminal.ansi.bright_blue': colorScheme.bg_term_blue_bright,
    'terminal.ansi.dim_blue': null,
    'terminal.ansi.magenta': colorScheme.bg_term_magenta,
    'terminal.ansi.bright_magenta': colorScheme.bg_term_magenta,
    'terminal.ansi.dim_magenta': null,
    'terminal.ansi.cyan': colorScheme.bg_term_cyan,
    'terminal.ansi.bright_cyan': colorScheme.bg_term_cyan_bright,
    'terminal.ansi.dim_cyan': null,
    'terminal.ansi.white': colorScheme.bg_term_white,
    'terminal.ansi.bright_white': colorScheme.bg_term_white_bright,
    'terminal.ansi.dim_white': null,
    accents: [
      colorScheme['rainbow_' + i]
      for i in std.range(0, 7)
    ],
    players: [
      {
        cursor: colorScheme.cursor,
        background: colorScheme.bg_mark_select,
        selection: addAlpha(colorScheme.fg_mark_select, 0.55),
      },
    ] + [
      {
        cursor: colorScheme['rainbow_' + i],
        background: colorScheme['rainbow_' + i],
        selection: addAlpha(colorScheme['rainbow_' + i], 0.76),
      }
      for i in std.range(1, 6)
    ],
    syntax: {
      attribute: {
        color: colorScheme.preprocessor,
      },
      boolean: {
        color: colorScheme.blue_cooler,
      },
      comment: {
        color: colorScheme.comment,
        font_style: 'italic',
      },
      constant: {
        color: colorScheme.constant,
      },
      constructor: {
        color: colorScheme.fnname,
      },
      embedded: {
        color: colorScheme.preprocessor,
      },
      'function': {
        color: colorScheme.magenta,
      },
      keyword: {
        color: colorScheme.magenta_cooler,
        font_weight: 700,
      },
      number: {
        color: colorScheme.blue_faint,
      },
      operator: {
        color: colorScheme.fnname,
      },
      property: {
        color: colorScheme.type,
      },
      string: {
        color: colorScheme.string,
      },
      'string.escape': {
        color: colorScheme.string,
      },
      'string.regex': {
        color: colorScheme.string,
      },
      'string.special': {
        color: colorScheme.string,
      },
      'string.special.symbol': {
        color: colorScheme.string,
      },
      tag: {
        color: colorScheme.constant,
      },
      'text.literal': {
        color: colorScheme.fg_prose_code,
      },
      title: {
        color: colorScheme.fg_heading_2,
        font_weight: 700,
      },
      type: {
        color: colorScheme.cyan_cooler,
        font_weight: 700,
      },
      variable: {
        color: colorScheme.variable,
      },
      'variable.special': {
        color: colorScheme.variable,
        font_weight: 700,
      },
    },
  },
};

{
  '$schema': 'https://zed.dev/schema/themes/v0.2.0.json',
  name: 'Modus Themes',
  author: 'Vitaly Slobodin <vitaliy.slobodin@gmail.com>',
  themes: [
    makeTheme(name, colors[name])
    for name in std.objectFields(colors)
  ],
}
