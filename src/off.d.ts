export type Off = (key: string) => void

declare module './off' {
  /** Unbinds a key event handler */
  const off: Off
  export default off
}
