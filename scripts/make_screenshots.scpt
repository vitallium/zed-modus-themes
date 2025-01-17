set themes to {"Modus Operandi", "Modus Operandi Tinted", "Modus Operandi Tritanopia", "Modus Operandi Deuteranopia", "Modus Vivendi", "Modus Vivendi Tinted", "Modus Vivendi Tritanopia", "Modus Vivendi Deuteranopia"}

tell application "Zed Preview"
    activate
    delay 1 -- Allow time for the app to focus
    tell application "System Events"
        keystroke "f" using {command down} -- Maximize window
    end tell
end tell

repeat with theme in themes
    tell application "System Events"
        -- Focus Zed Preview
        keystroke "k" using {command down}
        keystroke "t" using {command down}
        delay 0.5

        -- Type theme name and press Enter
        keystroke theme
        delay 0.5
        keystroke return
        delay 0.5

        -- Open file search
        keystroke "o" using {option down, command down}
        delay 0.5

        -- Type "ruby-lsp" and press Enter
        keystroke "ruby-lsp"
        delay 0.5
        keystroke return
        delay 0.5

        -- Open specific file
        keystroke "p" using {command down}
        delay 0.5
        keystroke "lib/ruby_lsp/client_capabilities.rb"
        delay 0.5
        keystroke return
        delay 0.5

        -- Find "let"
        keystroke "f" using {command down}
        delay 0.5
        keystroke "let"
        delay 0.5

        -- Take screenshot
        -- Activate Zed
        tell application "Zed Preview" to activate
        delay 1

        -- Convert theme name to lowercase for the filename
        set formattedTheme to do shell script "echo " & quoted form of (theme as string) & " | tr '[:upper:]' '[:lower:]' | tr ' ' '_'"

        do shell script "screencapture -w ~/Desktop/" & formattedTheme & ".png"
        delay 1
    end tell
end repeat
