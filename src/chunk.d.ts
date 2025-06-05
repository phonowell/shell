export type Chunk<T> = (list: T[], size?: number) => T[][]

declare module './chunk' {
  /** Splits an array into chunks of a specified size */
  const chunk: Chunk
  export default chunk
}
