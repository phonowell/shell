# @ts-check

###* @type import('./setInterval').SetInterval ###
export default (callback, time) ->

  unless time > 0
    throw new Error 'setInterval requires a positive time value'

  Native 'SetTimer, % callback, % time'
  return callback