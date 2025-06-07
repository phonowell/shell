export type Defer = (func: Function, ...args: unknown[]) => Function

declare module './defer' {
  /** Schedules a function to be called after the current call stack has cleared */
  const defer: Defer
  export default defer
}
