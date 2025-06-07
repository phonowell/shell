export type SetInterval = (callback: Function, time: number) => number

declare module './setInterval' {
  /** Schedules a function to be called repeatedly at specified intervals */
  const setInterval: SetInterval
  export default setInterval
}
