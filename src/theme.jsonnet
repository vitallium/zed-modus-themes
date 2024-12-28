local colors = import 'colors.libsonnet';

{
  '$schema': 'https://zed.dev/schema/themes/v0.2.0.json',
  name: 'Modus Themes',
  author: 'Vitaly Slobodin <vitaliy.slobodin@gmail.com>',
  themes: [
    {
      name: 'Modus Operandi',
      appearance: 'light',
      style: {
        'editor.background': colors.operandi.bg_main,
        'editor.foreground': colors.operandi.fg_main,
        'editor.highlighted_line.background': colors.operandi.bg_hl_line,
        border: colors.operandi.border,
        'border.variant': colors.operandi.border,
        created: colors.operandi.fg_added,
        deleted: colors.operandi.fg_removed,
        renamed: colors.operandi.fg_changed,
        modified: colors.operandi.fg_changed,
        warning: colors.operandi.warning,
        'error': colors.operandi.err,
        'terminal.foreground': colors.operandi.fg_main,
        'terminal.dim_foreground': colors.operandi.fg_dim,
        syntax: {
          comment: {
            color: colors.operandi.comment,
          },
          attribute: {
            color: colors.operandi.cyan,
          },
          constant: {
            color: colors.operandi.constant,
          },
          number: {
            color: colors.operandi.blue_faint,
          },
          variable: {
            color: colors.operandi.variable,
          },
          string: {
            color: colors.operandi.string,
          },
          'function': {
            color: colors.operandi.magenta,
          },
          keyword: {
            color: colors.operandi.magenta_cooler,
          },
          type: {
            color: colors.operandi.magenta_cooler,
          },
        },
      },
    },
    {
      name: 'Modus Vivendi',
      appearance: 'dark',
      style: {
        'editor.background': colors.vivendi.bg_main,
        'editor.foreground': colors.vivendi.fg_main,
        'editor.highlighted_line.background': colors.vivendi.bg_hl_line,
        border: colors.vivendi.border,
        'border.variant': colors.vivendi.border,
        created: colors.vivendi.fg_added,
        deleted: colors.vivendi.fg_removed,
        renamed: colors.vivendi.fg_changed,
        modified: colors.vivendi.fg_changed,
        warning: colors.operandi.warning,
        'error': colors.operandi.err,
        'terminal.foreground': colors.vivendi.fg_main,
        'terminal.dim_foreground': colors.vivendi.fg_dim,
        syntax: {
          comment: {
            color: colors.vivendi.comment,
          },
          attribute: {
            color: colors.vivendi.cyan,
          },
          constant: {
            color: colors.vivendi.constant,
          },
          number: {
            color: colors.vivendi.blue_faint,
          },
          variable: {
            color: colors.vivendi.variable,
          },
          string: {
            color: colors.vivendi.string,
          },
          'function': {
            color: colors.vivendi.magenta,
          },
          keyword: {
            color: colors.vivendi.magenta_cooler,
          },
          type: {
            color: colors.vivendi.magenta_cooler,
          },
        },
      },
    },
  ],
}
