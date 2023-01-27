import { Fn } from './module'

export class EmitterShell {
  private bus: [string, string, Fn, 'always' | 'once' | 'expired'][]
  constructor()
  emit(key: string, ...args: unknown[]): void
  off(key: string): void
  on(key: string, callback: Fn): void
  once(key: string, callback: Fn): void
}
