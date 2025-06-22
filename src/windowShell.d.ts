type Level = 'high' | 'low' | 'normal'

export type Constructor = (exe: string, title?: string) => void

export class WindowShell {
  exe: string
  title: string
  constructor(exe: string, title?: string)
  private getWindowIdString(): string
  blur(): void
  close(): void
  focus(): void
  getBounds(): { x: number; y: number; width: number; height: number }
  getProcessId(): number
  getTitle(): string
  getWindowId(): number
  hide(): void
  isActive(): boolean
  isExists(): boolean
  isFullScreen(): boolean
  kill(): void
  maximize(): void
  minimize(): void
  restore(): void
  setPriority(level: Level): void
  setStyle(style: string | number): void
  show(): void
  wait(callback?: Function): void
}

declare global {
  interface WindowShellConstructor {
    new (exe: string, title?: string): WindowShell
  }
  const WindowShell: WindowShellConstructor
}

declare module './windowShell' {
  /** Window operations shell class */
  export default WindowShell
}
