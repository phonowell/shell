# @ts-check

import $keyBindingXShell from './keyBindingXShell'
import $length from './length'

###* @type import('../type/module').IsKeyBound ###
export default (key) -> ($length $keyBindingXShell.getListItem key) > 0