# @ts-check

###* trim(ipt: string, omitting?: string): string
# @param {string} ipt
# @param {string} [omitting]
# @returns {string}
###
export default (ipt, omitting = ' \t') ->
  return Trim ipt, omitting