export type Suspend = (isSuspended?: boolean | 'Toggle' | 'On' | 'Off') => void

declare module './suspend' {
  /** Suspends or resumes the application */
  const suspend: Suspend
  export default suspend
}
