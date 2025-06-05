import type { Fn } from './types'

export type On = (key: string, callback: Fn) => void

declare module './on' {
  /** Binds a key event handler */
  const on: On
  export default on
}
