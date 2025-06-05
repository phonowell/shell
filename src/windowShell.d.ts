type Level = 'high' | 'low' | 'normal'

export type Constructor = (exe: string) => void
export class WindowShell {
  exe: string
  constructor(exe: string)
  blur(): void
  close(): void
  focus(): void
  hide(): void
  isActive(): boolean
  isExists(): boolean
  isFullScreen(): boolean
  getBounds(): { x: number; y: number; width: number; height: number }
  kill(): void
  maximize(): void
  minimize(): void
  restore(): void
  setPriority(level: Level): void
  setStyle(style: string | number): void
  show(): void
  wait(callback: Fn): void
}

declare module './windowShell' {
  /** Window operations shell class */
  export default WindowShell
}
