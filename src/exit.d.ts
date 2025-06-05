export type Exit = () => void

declare module './exit' {
  /** Exits the application */
  const exit: Exit
  export default exit
}
