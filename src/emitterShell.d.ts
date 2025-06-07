export class EmitterShell {
  private bus: [string, string, Function, 'always' | 'once' | 'expired'][]
  constructor()
  emit(key: string, ...args: unknown[]): void
  off(key?: string): void
  on(key: string, callback: Function): void
  once(key: string, callback: Function): void
}

declare global {
  interface EmitterShellConstructor {
    new (): EmitterShell
  }
  const EmitterShell: EmitterShellConstructor
}

declare module './emitterShell' {
  /** Event emitter shell class */
  export default EmitterShell
}
