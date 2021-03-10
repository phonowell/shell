import $watch from 'fire-keeper/watch'
import build from './build'
import c2a from 'coffee-ahk'

// function

class Compiler {

  isBusy = false
  list: (string | (() => Promise<unknown>))[] = []

  constructor() {
    setInterval(() => {
      this.next()
    }, 1e3)
  }

  add(
    input: string | (() => Promise<unknown>)
  ): void {

    if (!this.list.includes(input))
      this.list.push(input)
  }

  next(): void {

    if (!this.list?.length) return
    if (this.isBusy) return

    const input = this.list.shift()
    if (!input) return

    this.isBusy = true

    if (typeof input === 'string') {
      c2a(input, {
        salt: 'script',
      })
        .catch((e: Error) => {
          console.log(e.stack)
        })
        .finally(() => {
          this.isBusy = false
        })
      return
    }

    if (input instanceof Function) {
      input()
        .catch((e: Error) => {
          console.log(e.stack)
        })
        .finally(() => {
          this.isBusy = false
        })
      return
    }

    this.isBusy = false
    throw new Error('invalid type')
  }
}

const main = (): void => {

  process.on('uncaughtException', e => console.error(e))

  const compiler = new Compiler()

  $watch('./script/**/*.coffee', () => {
    compiler.add('./script/index.coffee')
  })

  $watch('./source/**/*.coffee', () => {
    compiler.add(build)
  })
}

// export
export default main