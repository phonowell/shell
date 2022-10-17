import { Fn } from './module'

type Item = [string, Fn]

export class KeyBindingShell {
  mapBound: Record<string, Fn>
  mapCallback: Record<string, Item[]>
  constructor()
  add(key: string, callback: Fn): void
  fire(key: string): void
  init(key: string): void
  off(key: string, callback: Fn): void
  on(key: string, callback: Fn): void
  remove(key: string): void
}
