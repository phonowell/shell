export type GetType = (
  ipt: unknown,
) => 'array' | 'function' | 'number' | 'object' | 'string'

declare module './getType' {
  /** Returns the type of the input as a string */
  const getType: GetType
  export default getType
}
