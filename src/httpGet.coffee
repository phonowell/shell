# @ts-check

###* @type import('./httpGet').HttpGet ###
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