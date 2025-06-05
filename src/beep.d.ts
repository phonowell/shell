export type Beep = () => void

declare module './beep' {
  /** Plays a short beep sound */
  const beep: Beep
  export default beep
}
