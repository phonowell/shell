export type Join = (
  list: (string | number | boolean)[],
  seperator?: string,
) => string

declare module './join' {
  /** Joins array elements into a string */
  const join: Join
  export default join
}
