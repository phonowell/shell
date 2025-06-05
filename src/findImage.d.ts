type Point = [number, number]

export type FindImage = (source: string, start?: Point, end?: Point) => Point

declare module './findImage' {
  /** Finds an image on the screen */
  const findImage: FindImage
  export default findImage
}
