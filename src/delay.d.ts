export type Delay = (
  fn: Function,
  wait: number,
  ...args: unknown[]
) => Function

declare module './delay' {
  /** Creates a function that delays invoking func until after wait milliseconds have elapsed since the last time the debounced function was invoked */
  const delay: Delay
  export default delay
}
