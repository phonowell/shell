type Item = [Name, Function]
type KeyMixed = string
type Key = string
type Name = string

export class KeyBindingShell {
  mapBound: Record<Key, Function>
  mapCallback: Record<Key, Item[]>
  mapPrevented: Record<Key, boolean>
  constructor()
  add(keyMixed: KeyMixed, callback: Function): void
  fire(keyMixed: KeyMixed): void
  private formatKey(key: Key, prefix?: '~' | ''): Key
  getListItem(keyMixed: KeyMixed): Item[]
  isPrevented(key: Key): boolean
  private prepare(key: Key): void
  prevent(key: Key, isPrevented: boolean): void
  register(key: Key): void
  remove(keyMixed: KeyMixed): void
}

declare module './keyBindingShell' {
  /** Key binding operations shell class */
  export default KeyBindingShell
}
