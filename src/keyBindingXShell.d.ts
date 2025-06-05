import type { KeyBindingShell } from './keyBindingShell'

declare module './keyBindingXShell' {
  /** Global key binding shell instance */
  const keyBindingXShell: KeyBindingShell
  export default keyBindingXShell
}
