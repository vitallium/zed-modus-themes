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
    'terminal.foreground': colorScheme.fg_main,
    'terminal.dim_foreground': colorScheme.fg_dim,
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
      number: {
        color: colorScheme.blue_faint,
      },
      variable: {
        color: colorScheme.variable,
      },
      string: {
        color: colorScheme.string,
      },
      'function': {
        color: colorScheme.magenta,
      },
      keyword: {
        color: colorScheme.magenta_cooler,
      },
      type: {
        color: colorScheme.magenta_cooler,
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
