export type Exec = (
  cmd: string | string[],
  callback?: (code: number | string) => void,
) => void

declare module './exec' {
  /** Executes a command line program */
  const exec: Exec
  export default exec
}
