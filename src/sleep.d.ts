export type Sleep = (time: number) => void

declare module './sleep' {
  /** Pauses execution for a specified time */
  const sleep: Sleep
  export default sleep
}
