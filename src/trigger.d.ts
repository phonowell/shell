export type Trigger = (key: string) => void

declare module './trigger' {
  /** Triggers a key binding event */
  const trigger: Trigger
  export default trigger
}
