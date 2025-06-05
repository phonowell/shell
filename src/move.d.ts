type Point = [number, number]

export type Move = (p: Point | undefined, speed?: number) => void

declare module './move' {
  /** Moves the mouse cursor to a specified point */
  const move: Move
  export default move
}
