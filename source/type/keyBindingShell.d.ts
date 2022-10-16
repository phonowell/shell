import { Fn } from './module'

type Item = [string, Fn]

export type MapBound = Record<string, Fn>
export type MapCallback = Record<string, Item>

export type Add = (key: string, callback: Fn) => void
export type Fire = (key: string) => void
export type Init = (key: string) => void
export type Off = (key: string, callback: Fn) => void
export type On = (key: string, callback: Fn) => void
export type Remove = (key: string) => void

export class KeyBindingShell {
  mapBound: MapBound
  mapCallback: MapCallback
  constructor()
  add: Add
  fire: Fire
  init: Init
  off: Off
  on: On
  remove: Remove
}
