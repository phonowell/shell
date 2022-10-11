# @ts-check

import $getType from './getType'

###* length(ipt: string | unknown[] | object): number
# @param {string | unknown[] | object} ipt
# @returns {number}
###
export default (ipt) ->

  $type = $getType ipt

  switch $type
    when 'array' then return ipt.Length()
    when 'object' then return ipt.Count()
    when 'string' then return StrLen ipt
    else throw new Error "$.length: invalid type '#{$type}'"