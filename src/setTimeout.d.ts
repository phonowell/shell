export type SetTimeout = (callback: Fn, time: number) => number

declare module './setTimeout' {
  /** Schedules a function to be called after a specified delay */
  const setTimeout: SetTimeout
  export default setTimeout
}
