export type IsKeyBound = (key: string) => boolean

declare module './isKeyBound' {
  /** Checks if a key is bound */
  const isKeyBound: IsKeyBound
  export default isKeyBound
}
