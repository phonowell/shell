export type Bus = [string, string, Function, number][]
export type Constructor = () => void
export type Emit = (key: string, ...args: unknown[]) => void
export type Off = (key: string) => void
export type On = (key: string, callback: Function) => void
export type Once = (key: string, callback: Function) => void

export type EmitterShell = {
  bus: Bus
  constructor: Constructor
  emit: Emit
  off: Off
  on: On
  once: Once
}
