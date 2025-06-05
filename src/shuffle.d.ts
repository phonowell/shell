export type Shuffle = (list: string[]) => string[]

declare module './shuffle' {
  /** Creates an array of shuffled values */
  const shuffle: Shuffle
  export default shuffle
}
