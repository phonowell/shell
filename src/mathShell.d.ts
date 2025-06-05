export class MathShell {
  abs(n: number): number

  ceil(n: number): number

  floor(n: number): number

  max(...numbers: number[]): number

  min(...numbers: number[]): number

  mod(dividend: number, divisor: number): number

  round(n: number): number
}

declare module './mathShell' {
  /** Mathematical operations shell class */
  export default MathShell
}
