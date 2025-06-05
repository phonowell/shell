export type Open = (source: string) => void

declare module './open' {
  /** Opens a file or URL */
  const open: Open
  export default open
}
