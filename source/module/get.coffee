# @ts-check

# get(url: string, callback: (data: string) => unknown): void
###* @type {import('@/type/module').Get} *###
export default (url, callback) ->

  try
    whr = ComObjCreate 'WinHttp.WinHttpRequest.5.1'
    whr.Open 'GET', url, true
    whr.Send()
    whr.WaitForResponse()
    callback whr.ResponseText

  catch
    callback ''

  return