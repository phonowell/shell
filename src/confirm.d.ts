export type Confirm = (
  text: string,
  callback: (result: boolean) => unknown,
) => void

declare module './confirm' {
  /** Displays a confirmation dialog with the given text */
  const confirm: Confirm
  export default confirm
}
