import { Fn } from './module'

type Args2 = [Key, Fn]
type Args3 = [Key, Name, Fn]
type Item = [string, Fn]
type Key = string
type Name = string

export class KeyBindingShell {
  mapBound: Record<Key, Fn>
  mapCallback: Record<Name, Item[]>
  constructor()
  add(...args: Args3 | Args2): void
  fire(key: string): void
  init(key: string): void
  private isTuple3(ipt: unknown[]): ipt is Args3
  off(key: string, callback: Fn): void
  on(key: string, callback: Fn): void
  private pickArgs(args: Args3 | Args2): Args3
  remove(key: string): void
}
