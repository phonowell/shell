# @ts-check

###* replace(ipt: string, searchment: string, replacement: string, limit?: number): string
# @param {string} ipt
# @param {string} searchment
# @param {string} replacement
# @param {number} [limit]
# @returns {string}
###
export default (ipt, searchment, replacement, limit = -1) ->
  return StrReplace ipt, searchment, replacement, limit