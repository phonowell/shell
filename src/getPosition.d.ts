import type { Point } from './types'

export type GetPosition = () => Point

declare module './getPosition' {
  /** Returns the current position of the mouse cursor */
  const getPosition: GetPosition
  export default getPosition
}
