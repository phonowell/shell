import type { WindowShell } from './types/windowShell'

export type Window = (source: string) => WindowShell

declare module './window' {
  /** Creates a window shell for window operations */
  const window: Window
  export default window
}
