import type { KeyBindingShell } from './keyBindingShell'

export type KeyBinding = KeyBindingShell

declare module './keyBinding' {
  /** Global key binding shell instance */
  const keyBinding: KeyBindingShell
  export default keyBinding
}
