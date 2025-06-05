export type Press = (...key: string[]) => void
export type Press1 = (listInput: string[]) => string[]
export type Press2 = (listInput: string[]) => boolean

declare module './press' {
  /** Simulates key press events */
  const press: Press
  export default press
}
