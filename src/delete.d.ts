export type Delete = <T extends object>(
  object: T,
  ...keys: (string | number)[]
) => void

declare module './delete' {
  /** Deletes specified keys from an object */
  const deleteKeys: Delete
  export default deleteKeys
}
