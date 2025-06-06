# @ts-check

###* @type import('./setInterval').SetInterval ###
export default (callback, time) ->

  unless time > 0 then throw new Error '$.setInterval: invalid value'

  Native 'SetTimer, % callback, % time'
  return callback