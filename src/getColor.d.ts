type Point = [number, number]

export type GetColor = (point: Point | undefined) => number

declare module './getColor' {
  /** Gets the color at a specific point on the screen */
  const getColor: GetColor
  export default getColor
}
