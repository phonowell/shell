import type { EmitterShell } from './types/emitterShell'

export type Emitter = () => EmitterShell

declare module './emitter' {
  /** Creates a new event emitter */
  const emitter: Emitter
  export default emitter
}
