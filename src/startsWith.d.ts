export type StartsWith = (text: string, string: string) => boolean

declare module './startsWith' {
  /** Checks if string starts with the given target string */
  const startsWith: StartsWith
  export default startsWith
}
