export type Values = <T>(ipt: { [x: string]: T }) => T[]

declare module './values' {
  /** Creates an array of the own enumerable property values of object */
  const values: Values
  export default values
}
