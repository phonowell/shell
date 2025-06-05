export type SetFixed = (isFixed?: boolean | 'Toggle' | 'On' | 'Off') => void

declare module './setFixed' {
  /** Sets the fixed state of the window */
  const setFixed: SetFixed
  export default setFixed
}
