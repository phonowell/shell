import type { Fn } from './types'

export type Once = (callback: Fn) => Fn

declare module './once' {
  /** Creates a function that is restricted to invoking func once */
  const once: Once
  export default once
}
