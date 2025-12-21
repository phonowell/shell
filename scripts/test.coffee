# @ts-check

import './head.ahk'

import $beep from '../dist/beep'
import $on from '../dist/on'
import $preventDefaultKey from '../dist/preventDefaultKey'

key = 'f2'
$preventDefaultKey key, true
$on key, -> $beep()