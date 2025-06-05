export type ClearInterval = (timer: number) => void

declare module './clearInterval' {
  /** Clears a timer set by `setInterval` */
  const clearInterval: ClearInterval
  export default clearInterval
}
