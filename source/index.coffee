# @ts-check

import $abs from './include/abs'
import $add from './include/add'
import $admin from './include/admin'
import $alert from './include/alert'
import $beep from './include/beep'
import $bind from './include/bind'
import $blockInput from './include/blockInput'
import $ceil from './include/ceil'
import $chunk from './include/chunk'
import $clearInterval from './include/clearInterval'
import $clearTimeout from './include/clearTimeout'
import $click from './include/click'
import $mixin from './include/mixin'

$ = {}
$mixin $, abs: $abs
$mixin $, add: $add
$mixin $, admin: $admin
$mixin $, alert: $alert
$mixin $, beep: $beep
$mixin $, bind: $bind
$mixin $, blockInput: $blockInput
$mixin $, ceil: $ceil
$mixin $, chunk: $chunk
$mixin $, clearInterval: $clearInterval
$mixin $, clearTimeout: $clearTimeout
$mixin $, click: $click

$ = $