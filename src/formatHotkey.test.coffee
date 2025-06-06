# @ts-check

import $formatHotkey from '../dist/formatHotkey'

# Test 1: Single modifier keys (basic functionality)
do ->
  # Alt modifier should become !
  result = $formatHotkey 'alt + f4'
  unless result == '!f4'
    throw new Error "Alt modifier failed: expected '!f4', got '#{result}'"

do ->
  # Ctrl modifier should become ^
  result = $formatHotkey 'ctrl + f5'
  unless result == '^f5'
    throw new Error "Ctrl modifier failed: expected '^f5', got '#{result}'"

do ->
  # Shift modifier should become +
  result = $formatHotkey 'shift + a'
  unless result == '+a'
    throw new Error "Shift modifier failed: expected '+a', got '#{result}'"

do ->
  # Win modifier should become #
  result = $formatHotkey 'win + r'
  unless result == '#r'
    throw new Error "Win modifier failed: expected '#r', got '#{result}'"

# Test 2: Multiple modifier combination (complex case)
do ->
  # All modifiers in standard order: alt + ctrl + shift + win
  result = $formatHotkey 'alt + ctrl + shift + win + esc'
  unless result == '!^+#esc'
    throw new Error "Multiple modifiers failed: expected '!^+#esc', got '#{result}'"