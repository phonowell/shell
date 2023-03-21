# @ts-check

import $noop from './noop'

###* @type import('../type/module').Open ###
export default (source) ->
  $noop source
  Native 'Run, % source'
  return