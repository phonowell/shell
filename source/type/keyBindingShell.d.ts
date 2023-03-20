import { Fn } from './module'

type Item = [Name, Fn]
type Key = string
type Name = string

export class KeyBindingShell {
  mapBound: Record<Key, Fn>
  mapCallback: Record<Name, Item[]>
  constructor()
  add(key: Key, callback: Fn): void
  fire(key: Key): void
  private formatKey(key: Key, prefix?: '~' | ''): Key
  prevent(key: Key, isPrevented: boolean): void
  register(key: Key, callback: Fn, action: boolean): void
  remove(key: Key): void
}
