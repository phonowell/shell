import type { Fn } from './types'

export type IsFunction = (ipt: unknown) => ipt is Fn

declare module './isFunction' {
  /** Checks if value is a function */
  const isFunction: IsFunction
  export default isFunction
}
