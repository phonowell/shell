import type { MathShell } from './types/mathShell'

export type Math = MathShell

declare module './math' {
  /** Creates a math shell for mathematical operations */
  const math: Math
  export default math
}
