export type Clone = <T extends unknown[] | object>(ipt: T) => T

declare module './clone' {
  /** Creates a shallow copy of an array or object */
  const clone: Clone
  export default clone
}
