import type { Fn } from './types'

export type Bind = (callback: Fn, ...args: unknown[]) => Fn

declare module './bind' {
  /** Binds a function to a specific context and arguments */
  const bind: Bind
  export default bind
}
