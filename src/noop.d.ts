export type Noop = (...args: unknown[]) => void

declare module './noop' {
  /** A no-operation function that does nothing */
  const noop: Noop
  export default noop
}
