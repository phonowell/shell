do ->

  unless $.isString $.VERSION
    throw new Error '$.VERSION is not a string'