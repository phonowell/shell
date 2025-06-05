export type BlockInput = (isBlocked: boolean) => void

declare module './blockInput' {
  /** Blocks or unblocks user input */
  const blockInput: BlockInput
  export default blockInput
}
