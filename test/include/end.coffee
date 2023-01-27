# @ts-check

import $exit from '../../source/module/exit'
import $setTimeout from '../../source/module/setTimeout'

do ->
  $setTimeout ->
    $exit()
  , 1e3