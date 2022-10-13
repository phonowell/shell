# @ts-check

import $isString from '../../source/module/isString'
import $version from '../../source/module/version'

do ->

  unless $isString $version
    throw new Error '$.VERSION is not a string'