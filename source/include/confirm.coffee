# confirm(text: string, callback: (result: boolean) => unknown): void
$.confirm = (text, callback) ->
  ```
  MsgBox, 0x4,, % text`
  IfMsgBox Yes
    callback.Call(true)
  else
    callback.Call(false)
  ```