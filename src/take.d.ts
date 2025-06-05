export type Take = <T>(list: T[], count?: number) => T[]

declare module './take' {
  /** Creates a slice of array with n elements taken from the beginning */
  const take: Take
  export default take
}
