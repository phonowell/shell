export type Once = (callback: Function) => Function

declare module './once' {
  /** Creates a function that is restricted to invoking func once */
  const once: Once
  export default once
}
