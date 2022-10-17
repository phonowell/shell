import { Fn } from './module'

export class EmitterShell {
  bus: [string, string, Fn, number][]
  constructor()
  emit(key: string, ...args: unknown[]): void
  off(key: string): void
  on(key: string, callback: Fn): void
  once(key: string, callback: Fn): void
}
