# @ts-check

#* exit(): void
###* @type {import('../type/module').Exit} ###
export default ->
  Native 'ExitApp'
  return