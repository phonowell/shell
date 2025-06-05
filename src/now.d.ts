export type Now = () => number

declare module './now' {
  /** Returns the current timestamp in milliseconds */
  const now: Now
  export default now
}
