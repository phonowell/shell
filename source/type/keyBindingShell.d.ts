import { Fn } from './module'

type Item = [Name, Fn]
type KeyMixed = string
type Key = string
type Name = string

export class KeyBindingShell {
  mapBound: Record<Key, Fn>
  mapCallback: Record<Key, Item[]>
  mapPrevented: Record<Key, boolean>
  constructor()
  add(keyMixed: KeyMixed, callback: Fn): void
  fire(keyMixed: KeyMixed): void
  private formatKey(key: Key, prefix?: '~' | ''): Key
  getListItem(keyMixed: KeyMixed): Item[]
  isPrevented(key: Key): boolean
  private prepare(key: Key): void
  prevent(key: Key, isPrevented: boolean): void
  register(key: Key): void
  remove(keyMixed: KeyMixed): void
}
