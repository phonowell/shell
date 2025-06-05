export type IsKeyPreventedDefault = (key: string) => boolean

declare module './isKeyPreventedDefault' {
  /** Checks if a key's default action is prevented */
  const isKeyPreventedDefault: IsKeyPreventedDefault
  export default isKeyPreventedDefault
}
