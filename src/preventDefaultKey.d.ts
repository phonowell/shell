export type PreventDefaultKey = (key: string, isPrevented: boolean) => void

declare module './preventDefaultKey' {
  /** Prevents or allows the default action for a key */
  const preventDefaultKey: PreventDefaultKey
  export default preventDefaultKey
}
