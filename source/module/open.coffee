# @ts-check

import $noop from './noop'

# open(source: string): void
###* @type {import('../type/module').Open} ###
export default (source) ->
  $noop source
  Native 'Run, % source'
  return