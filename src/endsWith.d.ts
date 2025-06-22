export type EndsWith = (haystack: string, needle: string) => boolean

declare module './endsWith' {
  /** Checks if string ends with the given target string */
  const endsWith: EndsWith
  export default endsWith
}
