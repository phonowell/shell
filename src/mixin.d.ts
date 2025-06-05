export type Mixin = (...args: object[]) => object

declare module './mixin' {
  /** Merges multiple objects into one */
  const mixin: Mixin
  export default mixin
}
