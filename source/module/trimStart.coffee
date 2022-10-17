# @ts-check

# trimStart(ipt: string, omitting: string): string
###* @type import('../type/module').TrimStart ###
export default (ipt, omitting = ' \t') -> LTrim ipt, omitting