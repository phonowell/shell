export type StartsWith = (haystack: string, needle: string) => boolean

declare module './startsWith' {
  /** Checks if string starts with the given target string */
  const startsWith: StartsWith
  export default startsWith
}
