export type HttpGet = (url: string, callback: (data: string) => unknown) => void

declare module './httpGet' {
  /** Makes an HTTP GET request */
  const httpGet: HttpGet
  export default httpGet
}
