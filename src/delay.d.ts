export type Delay = (func: Fn, wait: number, ...args: unknown[]) => Fn

declare module './delay' {
  /** Creates a function that delays invoking func until after wait milliseconds have elapsed since the last time the debounced function was invoked */
  const delay: Delay
  export default delay
}
