export type On = (key: string, callback: Function) => void

declare module './on' {
  /** Binds a key event handler */
  const on: On
  export default on
}
