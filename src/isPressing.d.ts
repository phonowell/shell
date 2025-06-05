export type IsPressing = (key: string) => boolean

declare module './isPressing' {
  /** Checks if a key is currently being pressed */
  const isPressing: IsPressing
  export default isPressing
}
