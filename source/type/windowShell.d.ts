import { Fn } from './module'

type Level = 'high' | 'low' | 'normal'

export type Exe = string
export type Constructor = (exe: string) => void
export type Blur = () => void
export type Close = () => void
export type Focus = () => void
export type Hide = () => void
export type IsActive = () => boolean
export type IsExist = () => boolean
export type IsFullScreen = () => boolean
export type Kill = () => void
export type Maximize = () => void
export type Minimize = () => void
export type Restore = () => void
export type SetPriority = (level: Level) => void
export type SetStyle = (style: string) => void
export type Show = () => void
export type Wait = (callback: Fn) => void

export type GetBounds = () => {
  x: number
  y: number
  width: number
  height: number
}

export type WindowShell = {
  exe: Exe
  constructor: Constructor
  blur: Blur
  close: Close
  focus: Focus
  hide: Hide
  isActive: IsActive
  isExist: IsExist
  isFullScreen: IsFullScreen
  getBounds: GetBounds
  kill: Kill
  maximize: Maximize
  minimize: Minimize
  restore: Restore
  setPriority: SetPriority
  setStyle: SetStyle
  show: Show
  wait: Wait
}
