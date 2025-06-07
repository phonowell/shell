export type SubString = (text: string, start?: number, end?: number) => string

declare module './subString' {
  /** Returns a substring of the given string */
  const subString: SubString
  export default subString
}
