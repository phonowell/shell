export type At = {
  <T>(input: T[], index: number): T | undefined
  <T extends Record<string, unknown>>(
    input: T,
    ...paths: (string | number)[]
  ): unknown | undefined
}

declare module './at' {
  /** Safely access nested values in arrays or objects */
  const at: At
  export default at
}
