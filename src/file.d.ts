import type { FileShell } from './fileShell'

export type File = (source: string) => FileShell

declare module './file' {
  /** Creates a file shell for file operations */
  const file: File
  export default file
}
