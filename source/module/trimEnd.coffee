# @ts-check

# trimEnd(ipt: string, omitting: string): string
###* @type import('../type/module').TrimEnd ###
export default (ipt, omitting = ' \t') -> RTrim ipt, omitting