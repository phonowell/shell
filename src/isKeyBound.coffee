# @ts-check

import $keyBinding from './keyBinding'

###* @type import('./isKeyBound').IsKeyBound ###
export default (key) -> ($keyBinding.getListItem key).Length() > 0