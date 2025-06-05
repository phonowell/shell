export type Mod = (dividend: number, divisor: number) => number

declare module './mod' {
  /** Computes the modulo operation */
  const mod: Mod
  export default mod
}
