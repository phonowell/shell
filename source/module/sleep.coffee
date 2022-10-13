# @ts-check

# sleep(time: number): void
###* @type {import('../type/module').Sleep} *###
export default (time) ->
  unless time > 0 then throw new Error '$.sleep: time is required'
  Native 'Sleep, % time'
  return