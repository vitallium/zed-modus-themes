local colors = import 'colors.libsonnet';

local makeTheme(name, colorScheme) = {
  name: 'Modus ' + name,
  appearance: colorScheme.appearance,
  style: {
    'editor.background': colorScheme.bg_main,
    'editor.foreground': colorScheme.fg_main,
    'editor.highlighted_line.background': colorScheme.bg_hl_line,
    border: colorScheme.border,
    'border.variant': colorScheme.border,
    created: colorScheme.fg_added,
    deleted: colorScheme.fg_removed,
    renamed: colorScheme.fg_changed,
    modified: colorScheme.fg_changed,
    warning: colorScheme.warning,
    'error': colorScheme.err,
    // Terminal
    'terminal.background': colorScheme.bg_main,
    'terminal.foreground': colorScheme.fg_main,
    'terminal.bright_foreground': null,
    'terminal.dim_foreground': null,
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
    syntax: {
      comment: {
        color: colorScheme.comment,
      },
      attribute: {
        color: colorScheme.cyan,
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
        color: colorScheme.string,
      },
      type: {
        color: colorScheme.magenta_cooler,
      },
      variable: {
        color: colorScheme.variable,
      },
      'variable.special': {
        color: colorScheme.variable,
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
    if colors[name].appearance != null
  ],
}
