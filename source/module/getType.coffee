# @ts-check

# getType(ipt: unknown): 'array' | 'function' | 'number' | 'object' | 'string'
###* @type {import('../type/module').GetType} ###
export default (ipt) ->

  Native 'if ipt is Number'
  Native '  return "number"'

  if IsFunc ipt then return 'function'

  if IsObject ipt
    if ipt.Count() == ipt.Length()
      unless ipt.Length() >= 0 then return 'function'
      return 'array'
    return 'object'

  return 'string'