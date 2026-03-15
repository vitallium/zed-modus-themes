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
    'text.disabled': colorScheme.fg_dim,
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
    'border.disabled': colorScheme.border,
    'border.focused': colorScheme.fg_link,
    'border.selected': colorScheme.fg_link,
    'border.transparent': addAlpha(colorScheme.bg_main, 0.0),
    // Border color. Used for deemphasized borders, like a visual divider between two sections
    'border.variant': colorScheme.border,

    //
    // Panels and other UI elements
    //
    // Border color. Used for elevated surfaces, like a context menu, popup, or dialog.
    'elevated_surface.background': colorScheme.bg_button_inactive,
    // Background Color. Used for grounded surfaces like a panel or tab.
    'surface.background': colorScheme.bg_dim,
    // Background Color. Used for the app background and blank panels or windows.
    background: colorScheme.bg_main,
    'background.appearance': 'opaque',

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
    'element.selection_background': colorScheme.bg_button_active,
    // Background Color. Used for the disabled state of an element that should have a different background than the surface it's on.
    'element.disabled': colorScheme.bg_button_inactive,
    // Background Color. Used for the area that shows where a dragged element will be dropped.
    'drop_target.background': addAlpha(colorScheme.bg_active, 0.55),
    'drop_target.border': colorScheme.border,
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
    'panel.focused_border': colorScheme.fg_link,
    'panel.indent_guide': colorScheme.border,
    'panel.indent_guide_active': colorScheme.fg_line_number_active,
    'panel.indent_guide_hover': colorScheme.fg_line_number_active,
    'panel.overlay_background': colorScheme.bg_button_inactive,
    'panel.overlay_hover': colorScheme.bg_button_hover,
    'toolbar.background': colorScheme.bg_main,
    'status_bar.background': colorScheme.bg_mode_line_active,
    'pane.focused_border': colorScheme.fg_link,
    'pane_group.border': colorScheme.border,
    'link_text.hover': colorScheme.fg_link,
    hidden: colorScheme.fg_dim,
    'hidden.background': colorScheme.bg_button_inactive,
    'hidden.border': colorScheme.border,
    ignored: colorScheme.fg_dim,
    'ignored.background': colorScheme.bg_button_inactive,
    'ignored.border': colorScheme.border,
    'search.match_background': colorScheme.bg_search_lazy,
    'search.active_match_background': addAlpha(colorScheme.bg_search_current, 1),

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
    'editor.debugger_active_line.background': colorScheme.bg_hl_line,
    // Text Color. Used to mark invisible characters in the editor.
    'editor.invisible': colorScheme.fg_space,
    // Text Color. Used for the text of the line number in the editor gutter.
    'editor.line_number': colorScheme.fg_line_number_inactive,
    // Text Color. Used for the text of the line number in the editor gutter when the line is highlighted.
    'editor.active_line_number': colorScheme.fg_line_number_active,
    'editor.hover_line_number': colorScheme.fg_line_number_active,
    'editor.indent_guide': colorScheme.border,
    'editor.indent_guide_active': colorScheme.fg_line_number_active,
    'editor.wrap_guide': colorScheme.border,
    'editor.active_wrap_guide': colorScheme.fg_line_number_active,
    'editor.gutter.background': colorScheme.bg_line_number_inactive,
    // Read-access of a symbol, like reading a variable.
    'editor.document_highlight.read_background': colorScheme.bg_dim,
    // Write-access of a symbol, like reading a variable.
    'editor.document_highlight.write_background': colorScheme.bg_hover,
    // Highlighted brackets background color.
    'editor.document_highlight.bracket_background': addAlpha(colorScheme.bg_paren_match, 0.55),
    // The color of the scrollbar thumb.
    'scrollbar.thumb.background': addAlpha(colorScheme.bg_mode_line_active, 0.55),
    // The color of the scrollbar thumb when hovered over.
    'scrollbar.thumb.hover_background': colorScheme.bg_active,
    'scrollbar.thumb.active_background': colorScheme.bg_active,
    // The border color of the scrollbar thumb.
    'scrollbar.thumb.border': colorScheme.border,
    'minimap.thumb.background': addAlpha(colorScheme.bg_mode_line_active, 0.55),
    'minimap.thumb.hover_background': colorScheme.bg_active,
    'minimap.thumb.active_background': colorScheme.bg_active,
    'minimap.thumb.border': colorScheme.border,
    // The background color of the scrollbar track.
    'scrollbar.track.background': colorScheme.bg_dim,
    // The border color of the scrollbar track.
    'scrollbar.track.border': colorScheme.border,

    //
    // Diff
    //
    // Represents an added entry or hunk in vcs, like git.
    'version_control.added': colorScheme.bg_added_fringe,
    'version_control.word_added': colorScheme.bg_added,
    // Represents a deleted entry in version control systems.
    'version_control.deleted': colorScheme.bg_removed_fringe,
    'version_control.word_deleted': colorScheme.bg_removed,
    // Represents a modified entry in version control systems.
    'version_control.modified': colorScheme.bg_changed_fringe,
    // Represents a renamed entry in version control systems.
    'version_control.renamed': colorScheme.bg_changed_fringe,
    // Represents a conflicting entry in version control systems.
    'version_control.conflict': colorScheme.bg_changed_fringe,
    // Represents an ignored entry in version control systems.
    'version_control.ignored': colorScheme.fg_dim,
    // Background color for row highlights of "ours" conflict markers in merge conflicts.
    'version_control.conflict_marker.ours': colorScheme.bg_removed,
    // Background color for row highlights of "theirs" conflict markers in merge conflicts.
    'version_control.conflict_marker.theirs': colorScheme.bg_added,

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

    // Indicates a successful operation or task completion.
    success: colorScheme.fg_prominent_note,
    'success.background': colorScheme.bg_prominent_note,
    'success.border': colorScheme.border,

    // Indicates some kind of unreachable status, like a block of code that can never be reached.
    unreachable: colorScheme.fg_dim,
    'unreachable.background': colorScheme.bg_dim,
    'unreachable.border': colorScheme.border,

    // Represents informational status updates or messages.
    info: colorScheme.info,
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

    // Debugger
    'debugger.accent': colorScheme.err,

    //
    // Terminal
    //
    'terminal.background': colorScheme.bg_main,
    'terminal.ansi.background': colorScheme.bg_main,
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
    'terminal.ansi.bright_magenta': colorScheme.bg_term_magenta_bright,
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
      _isinstance: {
        color: colorScheme.type,
      },
      _issubclass: {
        color: colorScheme.type,
      },
      _parent: {
        color: colorScheme.variable,
      },
      boolean: {
        color: colorScheme.constant,
      },
      charset: {
        color: colorScheme.preprocessor,
      },
      comment: {
        color: colorScheme.comment,
        font_style: 'italic',
      },
      concept: {
        color: colorScheme.type,
      },
      constant: {
        color: colorScheme.constant,
      },
      constructor: {
        color: colorScheme.fnname,
      },
      'diff.delta': {
        color: colorScheme.fg_changed,
      },
      'diff.delta.moved': {
        color: colorScheme.fg_changed,
      },
      'diff.minus': {
        color: colorScheme.fg_removed,
      },
      'diff.plus': {
        color: colorScheme.fg_added,
      },
      embedded: {
        color: colorScheme.preprocessor,
      },
      emphasis: {
        color: colorScheme.fg_alt,
      },
      'emphasis.markup': {
        color: colorScheme.fg_alt,
      },
      'emphasis.strong': {
        color: colorScheme.fg_alt,
      },
      'emphasis.strong.markup': {
        color: colorScheme.fg_alt,
      },
      enum: {
        color: colorScheme.type,
      },
      'error': {
        color: colorScheme.err,
      },
      'function': {
        color: colorScheme.fnname,
      },
      hint: {
        color: colorScheme.info,
      },
      'import': {
        color: colorScheme.preprocessor,
      },
      keyframes: {
        color: colorScheme.keyword,
      },
      keyword: {
        color: colorScheme.keyword,
      },
      label: {
        color: colorScheme.property,
      },
      'label.regex': {
        color: colorScheme.rx_construct,
      },
      lifetime: {
        color: colorScheme.keyword,
      },
      link_text: {
        color: colorScheme.fg_link,
      },
      'link_text.markup': {
        color: colorScheme.fg_link,
      },
      link_uri: {
        color: colorScheme.fg_link,
      },
      'link_uri.markup': {
        color: colorScheme.fg_link,
      },
      'markup.heading': {
        color: colorScheme.fg_heading_2,
      },
      'markup.link.url': {
        color: colorScheme.fg_link,
      },
      media: {
        color: colorScheme.type,
      },
      module: {
        color: colorScheme.preprocessor,
      },
      namespace: {
        color: colorScheme.preprocessor,
      },
      nested: {
        color: colorScheme.keyword,
      },
      none: {
        color: colorScheme.fg_main,
      },
      number: {
        color: colorScheme.number,
      },
      operator: {
        color: colorScheme.fnname,
      },
      predictive: {
        color: colorScheme.fg_dim,
      },
      preproc: {
        color: colorScheme.preprocessor,
      },
      primary: {
        color: colorScheme.fg_main,
      },
      property: {
        color: colorScheme.property,
      },
      punctuation: {
        color: colorScheme.punctuation,
      },
      'punctuation.bracket': {
        color: colorScheme.bracket,
      },
      'punctuation.bracket.html': {
        color: colorScheme.bracket,
      },
      'punctuation.bracket.jsx': {
        color: colorScheme.bracket,
      },
      'punctuation.bracket.regex': {
        color: colorScheme.bracket,
      },
      'punctuation.delimiter': {
        color: colorScheme.delimiter,
      },
      'punctuation.delimiter.html': {
        color: colorScheme.delimiter,
      },
      'punctuation.delimiter.jsx': {
        color: colorScheme.delimiter,
      },
      'punctuation.delimiter.regex': {
        color: colorScheme.delimiter,
      },
      'punctuation.embedded.markup': {
        color: colorScheme.punctuation,
      },
      'punctuation.list_marker': {
        color: colorScheme.punctuation,
      },
      'punctuation.list_marker.markup': {
        color: colorScheme.punctuation,
      },
      'punctuation.markup': {
        color: colorScheme.punctuation,
      },
      'punctuation.special': {
        color: colorScheme.punctuation,
      },
      'selector.class': {
        color: colorScheme.type,
      },
      'selector.id': {
        color: colorScheme.keyword,
      },
      'selector.pseudo': {
        color: colorScheme.keyword,
      },
      storageclass: {
        color: colorScheme.keyword,
      },
      'strikethrough.markup': {
        color: colorScheme.fg_dim,
      },
      string: {
        color: colorScheme.string,
      },
      supports: {
        color: colorScheme.keyword,
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
      text: {
        color: colorScheme.fg_main,
      },
      'text.jsx': {
        color: colorScheme.fg_main,
      },
      'text.literal': {
        color: colorScheme.fg_prose_code,
      },
      title: {
        color: colorScheme.fg_heading_2,
      },
      type: {
        color: colorScheme.type,
      },
      variant: {
        color: colorScheme.fg_alt,
      },
      variable: {
        color: colorScheme.variable,
      },
      'variable.special': {
        color: colorScheme.keyword,
      },
      warning: {
        color: colorScheme.warning,
      },
    },
    'vim.normal.background': colorScheme.blue_faint,
    'vim.normal.foreground': colorScheme.bg_dim,
    'vim.insert.background': colorScheme.green_faint,
    'vim.insert.foreground': colorScheme.bg_dim,
    'vim.visual.background': colorScheme.bg_magenta_intense,
    'vim.visual.foreground': colorScheme.fg_main,
    'vim.visual_line.background': colorScheme.bg_magenta_intense,
    'vim.visual_line.foreground': colorScheme.fg_main,
    'vim.visual_block.background': colorScheme.bg_magenta_intense,
    'vim.visual_block.foreground': colorScheme.fg_main,
    'vim.yank.background': colorScheme.bg_yellow_intense,
    'vim.replace.background': colorScheme.red_faint,
    'vim.replace.foreground': colorScheme.bg_dim,
    'vim.helix_normal.background': colorScheme.blue_faint,
    'vim.helix_normal.foreground': colorScheme.bg_dim,
    'vim.helix_select.background': colorScheme.bg_magenta_intense,
    'vim.helix_select.foreground': colorScheme.fg_main,
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
