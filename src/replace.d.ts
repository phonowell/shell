export type Replace = (
  original: string,
  searchment: string,
  replacement: string,
  count?: number,
) => string

declare module './replace' {
  /** Replaces occurrences of a substring in a string with another substring */
  const replace: Replace
  export default replace
}
