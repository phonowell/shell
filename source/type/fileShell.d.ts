export type Source = string
export type Constructor = (source: Source) => void
export type Append = (content: string) => void
export type IsExist = () => boolean
export type Read = () => string
export type Remove = () => void
export type Write = (content: string) => void

export class FileShell {
  source: Source
  constructor(source: Source)
  append: Append
  isExist: IsExist
  read: Read
  remove: Remove
  write: Write
}
