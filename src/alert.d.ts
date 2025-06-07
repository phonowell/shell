export type Alert = (message: unknown) => void

declare module './alert' {
  /** Displays a message in an alert dialog */
  const alert: Alert
  export default alert
}
