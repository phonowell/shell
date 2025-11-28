# @ts-check

###* @type import('./getType').GetType ###
export default (ipt) ->

  Native 'if ipt is Number'
  Native '{'
  Native '  return "number"'
  Native '}'

  if IsFunc ipt then return 'function'

  if IsObject ipt
    if ipt.Count() == ipt.Length()
      unless ipt.Length() >= 0 then return 'function'
      return 'array'
    return 'object'

  return 'string'