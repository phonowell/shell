export type Defer = (func: Fn, ...args: unknown[]) => Fn

declare module './defer' {
  /** Schedules a function to be called after the current call stack has cleared */
  const defer: Defer
  export default defer
}
