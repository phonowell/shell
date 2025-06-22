import type { WindowShell } from './windowShell'

export type Window = (exe: string, title?: string) => WindowShell

declare module './window' {
  /** Creates a window shell for window operations */
  const window: Window
  export default window
}
