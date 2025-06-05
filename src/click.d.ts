export type Click = (key?: string) => void

declare module './click' {
  /** Simulates a mouse click on the specified key */
  const click: Click
  export default click
}
