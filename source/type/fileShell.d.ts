export type Source = string
export type Constructor = (source: string) => void
export type Append = (content: string) => void
export type IsExist = () => boolean
export type Read = () => string
export type Remove = () => void
export type Write = (content: string) => void

export type FileShell = {
  source: Source
  constructor: Constructor
  append: Append
  isExist: IsExist
  read: Read
  remove: Remove
  write: Write
}