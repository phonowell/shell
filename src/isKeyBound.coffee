# @ts-check

import $keyBindingXShell from './keyBindingXShell'

###* @type import('./isKeyBound').IsKeyBound ###
export default (key) -> ($keyBindingXShell.getListItem key).Length() > 0