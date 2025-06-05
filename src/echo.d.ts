export type Echo = <T extends string>(message: T) => T

declare module './echo' {
  /** Returns the input string unchanged */
  const echo: Echo
  export default echo
}
