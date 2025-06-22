# @ts-check

import './windowShell'

###* @type import('./window').Window ###
export default (exe, title = '') -> new WindowShell exe, title