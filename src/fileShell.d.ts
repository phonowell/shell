export type Constructor = (source: string) => void

export class FileShell {
  source: string
  constructor(source: string)
  append(content: string): void
  isExists(): boolean
  read(): string
  remove(): void
  write(content: string): void
}

declare module './fileShell' {
  /** File operations shell class */
  export default FileShell
}
