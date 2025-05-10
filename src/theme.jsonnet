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
    // Text Color. Default text color used for most text.
    text: colorScheme.fg_main,
    // Text Color. Color of muted or deemphasized text. It is a subdued version of the standard text color.
    'text.muted': colorScheme.fg_alt,
    // Text Color. Color of the placeholder text typically shown in input fields to guide the user to enter valid data.
    'text.placeholder': colorScheme.fg_dim,
    // Text Color. Color used for text denoting disabled elements. Typically, the color is faded or grayed out to emphasize the disabled state.
    'text.disabled': colorScheme.fg_alt,
    // Text Color. Color used for emphasis or highlighting certain text, like an active filter or a matched character in a search.
    'text.accent': colorScheme.fg_link,

    // Fill Color. Used for the default fill color of an icon.
    icon: colorScheme.fg_main,
    // Fill Color. Used for the muted or deemphasized fill color of an icon.
    'icon.muted': colorScheme.fg_alt,
    // Fill Color. Used for the disabled fill color of an icon.
    'icon.disabled': colorScheme.fg_dim,
    // Fill Color. Used for the placeholder fill color of an icon.
    'icon.placeholder': colorScheme.fg_dim,
    // Fill Color. Used for the accent fill color of an icon.
    'icon.accent': colorScheme.fg_link,

    // Border color. Used for most borders, is usually a high contrast color.
    border: colorScheme.border,
    // Border color. Used for deemphasized borders, like a visual divider between two sections
    'border.variant': colorScheme.border,

    //
    // Panels and other UI elements
    //
    // Border color. Used for elevated surfaces, like a context menu, popup, or dialog.
    'elevated_surface.background': colorScheme.bg_button_inactive,
    // Background Color. Used for grounded surfaces like a panel or tab.
    'surface.background': colorScheme.bg_button_inactive,
    // Background Color. Used for the app background and blank panels or windows.
    background: colorScheme.bg_main,

    //
    // Elements might include: Buttons, Inputs, Checkboxes, Radio Buttons...
    //
    // For an element that should have the same background as the surface it's on, use `ghost_element_background`.
    'element.background': colorScheme.bg_button_inactive,
    // Background Color. Used for the hover state of an element that should have a different background than the surface it's on.
    'element.hover': colorScheme.bg_button_hover,
    // Background Color. Used for the active state of an element that should have a different background than the surface it's on.
    'element.active': colorScheme.bg_button_active,
    // Background Color. Used for the selected state of an element that should have a different background than the surface it's on.
    'element.selected': colorScheme.bg_button_active,
    // Background Color. Used for the disabled state of an element that should have a different background than the surface it's on.
    'element.disabled': colorScheme.bg_button_inactive,
    // Background Color. Used for the area that shows where a dragged element will be dropped.
    'drop_target.background': addAlpha(colorScheme.bg_active, 0.55),
    // Used for the background of a ghost element that should have the same background as the surface it's on.
    'ghost_element.background': colorScheme.bg_button_inactive,
    // Background Color. Used for the hover state of a ghost element that should have the same background as the surface it's on.
    'ghost_element.hover': colorScheme.bg_button_hover,
    // Background Color. Used for the active state of a ghost element that should have the same background as the surface it's on.
    'ghost_element.active': colorScheme.bg_button_active,
    // Background Color. Used for the selected state of a ghost element that should have the same background as the surface it's on.
    'ghost_element.selected': colorScheme.bg_button_active,
    // Background Color. Used for the disabled state of a ghost element that should have the same background as the surface it's on.
    'ghost_element.disabled': colorScheme.bg_button_inactive,
    'title_bar.background': colorScheme.bg_main,
    'title_bar.inactive_background': colorScheme.bg_dim,
    'panel.background': colorScheme.bg_main,
    'toolbar.background': colorScheme.bg_main,
    'status_bar.background': colorScheme.bg_mode_line_inactive,
    'search.match_background': colorScheme.bg_search_lazy,

    //
    // Tab Bar
    //
    'tab_bar.background': colorScheme.bg_tab_bar,
    'tab.inactive_background': colorScheme.bg_tab_other,
    'tab.active_background': colorScheme.bg_tab_current,

    //
    // Editor
    //
    'editor.background': colorScheme.bg_main,
    'editor.foreground': colorScheme.fg_main,
    'editor.subheader.background': colorScheme.bg_mode_line_active,
    'editor.highlighted_line.background': colorScheme.bg_hl_line,
    'editor.active_line.background': colorScheme.bg_hl_line,
    // Text Color. Used to mark invisible characters in the editor.
    'editor.invisible': colorScheme.fg_space,
    // Text Color. Used for the text of the line number in the editor gutter.
    'editor.line_number': colorScheme.fg_line_number_inactive,
    // Text Color. Used for the text of the line number in the editor gutter when the line is highlighted.
    'editor.active_line_number': colorScheme.fg_line_number_active,
    'editor.gutter.background': colorScheme.bg_line_number_inactive,
    // Read-access of a symbol, like reading a variable.
    'editor.document_highlight.read_background': colorScheme.bg_dim,
    // Write-access of a symbol, like reading a variable.
    'editor.document_highlight.write_background': colorScheme.bg_hover,
    // Highlighted brackets background color.
    'editor.document_highlight.bracket_background': colorScheme.bg_paren_match,
    // The color of the scrollbar thumb.
    'scrollbar.thumb.background': addAlpha(colorScheme.bg_mode_line_active, 0.55),
    // The color of the scrollbar thumb when hovered over.
    'scrollbar.thumb.hover_background': colorScheme.bg_active,
    // The border color of the scrollbar thumb.
    'scrollbar.thumb.border': colorScheme.border,
    // The background color of the scrollbar track.
    'scrollbar.track.background': colorScheme.bg_dim,
    // The border color of the scrollbar track.
    'scrollbar.track.border': colorScheme.border,

    //
    // Diff
    //
    // Represents an added entry or hunk in vcs, like git.
    'version_control.added': colorScheme.bg_added_fringe,
    // Represents a modified entry in version control systems.
    'version_control.modified': colorScheme.bg_changed_fringe,
    // Represents a deleted entry in version control systems.
    'version_control.deleted': colorScheme.bg_removed_fringe,
    // Represents a renamed entry in version control systems.
    'version_control.renamed': colorScheme.bg_changed_fringe,
    // Represents a conflicting entry in version control systems.
    'version_control.conflict': colorScheme.bg_diff_context,
    // Represents an ignored entry in version control systems.
    'version_control.ignored': colorScheme.fg_dim,
    // Background color for row highlights of "ours" regions in merge conflicts.
    'version_control.conflict.ours_background': colorScheme.bg_removed,
    // Background color for row highlights of "theirs" regions in merge conflicts.
    'version_control.conflict.theirs_background': colorScheme.bg_added,
    // Background color for row highlights of "ours" conflict markers in merge conflicts.
    'version_control.conflict.ours_marker_background': colorScheme.bg_removed_refine,
    // Background color for row highlights of "theirs" conflict markers in merge conflicts.
    'version_control.conflict.theirs_marker_background': colorScheme.bg_added_refine,
    // Background color for row highlights of the "ours"/"theirs" divider in merge conflicts.
    'version_control.conflict.divider_background': colorScheme.bg_diff_context,

    // Indicates some kind of conflict, like a file changed on disk while it was open, or
    // merge conflicts in a Git repository.
    conflict: colorScheme.fg_changed_intense,
    'conflict.background': colorScheme.bg_changed,
    'conflict.border': colorScheme.border,

    // Indicates something new, like a new file added to a Git repository.
    created: colorScheme.fg_added_intense,
    'created.background': colorScheme.bg_added,
    'created.border': colorScheme.border,

    // Indicates that something no longer exists, like a deleted file.
    deleted: colorScheme.fg_removed_intense,
    'deleted.background': colorScheme.bg_removed,
    'deleted.border': colorScheme.border,

    // Represents a renamed status, such as a file that has been renamed.
    renamed: colorScheme.fg_changed_intense,
    'renamed.background': colorScheme.bg_changed,
    'renamed.border': colorScheme.border,

    // Indicates a changed or altered status, like a file that has been edited.
    modified: colorScheme.fg_changed_intense,
    'modified.background': colorScheme.bg_changed,
    'modified.border': colorScheme.border,

    // Represents a warning status, like an operation that is about to fail.
    warning: colorScheme.fg_prominent_warning,
    'warning.background': colorScheme.bg_prominent_warning,
    'warning.border': colorScheme.border,
    info: colorScheme.blue_cooler,
    'info.background': colorScheme.bg_blue_intense,
    'info.border': colorScheme.border,

    // Indicates a system error, a failed operation or a diagnostic error.
    'error': colorScheme.err,
    'error.background': colorScheme.bg_prominent_err,
    'error.border': colorScheme.border,

    // Indicates a hint or some kind of additional information.
    hint: colorScheme.fg_dim,
    'hint.background': colorScheme.bg_dim,
    'hint.border': colorScheme.border,

    // Indicates something that is predicted, like automatic code completion, or generated code.
    predictive: colorScheme.fg_dim,
    'predictive.background': colorScheme.bg_prompt,
    'predictive.border': colorScheme.border,

    //
    // Terminal
    //
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
        background: colorScheme.bg_region,
        selection: addAlpha(colorScheme.fg_region, 0.24),
      },
    ] + [
      {
        cursor: colorScheme['rainbow_' + i],
        background: colorScheme['rainbow_' + i],
        selection: addAlpha(colorScheme['rainbow_' + i], 0.24),
      }
      for i in std.range(1, 6)
    ],
    syntax: {
      attribute: {
        color: colorScheme.preprocessor,
      },
      boolean: {
        color: colorScheme.constant,
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
        color: colorScheme.fnname,
      },
      keyword: {
        color: colorScheme.keyword,
        font_weight: 700,
      },
      number: {
        color: colorScheme.number,
      },
      operator: {
        color: colorScheme.fnname,
      },
      property: {
        color: colorScheme.property,
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
        color: colorScheme.type,
        font_weight: 700,
      },
      variable: {
        color: colorScheme.variable,
      },
      'variable.special': {
        color: colorScheme.keyword,
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
