# @ts-check

import $keyBindingXShell from './keyBindingXShell'
import $length from './length'

###* @type import('./isKeyBound').IsKeyBound ###
export default (key) -> ($length $keyBindingXShell.getListItem key) > 0