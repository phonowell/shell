export type Mixin = (
  ...args: Record<string, unknown>[]
) => Record<string, unknown>

declare module './mixin' {
  /** Merges multiple objects into one */
  const mixin: Mixin
  export default mixin
}
