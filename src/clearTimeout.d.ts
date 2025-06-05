export type ClearTimeout = (timer: number) => void

declare module './clearTimeout' {
  /** Clears a timer set by `setTimeout` */
  const clearTimeout: ClearTimeout
  export default clearTimeout
}
