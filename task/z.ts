import $ from 'fire-keeper'

// function

type DeepExtract<T> = T extends (...args: any[]) => infer R
  ? (
      ...args: { [K in keyof Parameters<T>]: DeepExtract<Parameters<T>[K]> }
    ) => DeepExtract<R>
  : T extends Array<infer U>
  ? { [K in keyof T]: DeepExtract<T[K]> }
  : T extends object
  ? { [K in keyof T]: DeepExtract<T[K]> }
  : T

function toTuple<T extends any[]>(
  arr: [...T],
): { [K in keyof T]: DeepExtract<T[K]> } {
  return arr
}

const main = async () => {
  const a = toTuple([1, 2, 1, 'string'])
}

// export
export default main
