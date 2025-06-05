export type Play = (filename: string) => void

declare module './play' {
  /** Plays an audio file */
  const play: Play
  export default play
}
