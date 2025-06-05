export type Reload = () => void

declare module './reload' {
  /** Reloads the application */
  const reload: Reload
  export default reload
}
