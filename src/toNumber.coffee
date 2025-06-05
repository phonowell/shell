# @ts-check

import $isNumber from './isNumber'

###* @type import('./toNumber').ToNumber ###
export default (ipt) ->
  unless $isNumber ipt then return 0
  return ipt