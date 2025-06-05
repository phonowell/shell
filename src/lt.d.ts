export type Lt = <T = number>(value: T, other: T) => boolean

declare module './lt' {
  /** Checks if value is less than other */
  const lt: Lt
  export default lt
}
