# @ts-check

###* @type import('../type/module').Sleep ###
export default (time) ->
  unless time > 0 then throw '$.sleep: time is required'
  Native 'Sleep, % time'
  return