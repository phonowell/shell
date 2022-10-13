# @ts-check

# replace(ipt: string, searchment: string, replacement: string, limit?: number): string
###* @type {import('@/type/module').Replace} *###
export default (ipt, searchment, replacement, limit = -1) ->
  StrReplace ipt, searchment, replacement, limit