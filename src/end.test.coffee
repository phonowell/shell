# @ts-check

import $exit from '../src/exit'
import $setTimeout from '../src/setTimeout'

do ->
  $setTimeout ->
    $exit()
  , 1e3