type Point = [number, number]

export type FindColor = (
  color: number,
  start?: Point,
  end?: Point,
  variation?: number,
) => Point

declare module './findColor' {
  /** Finds a color on the screen */
  const findColor: FindColor
  export default findColor
}
