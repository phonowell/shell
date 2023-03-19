import { Fn } from './module'

type Item = [Name, Fn]
type Key = string
type Name = string

export class KeyBindingShell {
  mapCallback: Record<Name, Item[]>
  constructor()
  add(key: Key, callback: Fn): void
  fire(key: Key): void
  private formatKey(key: Key, prefix?: '~' | ''): Key
  off(key: Key, callback: Fn): void
  on(key: Key, callback: Fn): void
  permit(key: Key): void
  prevent(key: Key): void
  remove(key: Key): void
}
