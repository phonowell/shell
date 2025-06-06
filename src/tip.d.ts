type Point = [number, number]

export type Tip = <T extends string>(message: T, p?: Point | undefined) => T

declare module './tip' {
  /** Shows a tooltip message at a specified point */
  const tip: Tip
  export default tip
}
