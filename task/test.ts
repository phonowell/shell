import $ from 'fire-keeper'
import c2a from 'coffee-ahk'

// variable

const path = {
  ahk: './test/index.ahk',
  coffee: './test/index.coffee',
} as const

// function

const main = async () => {

  await c2a(path.coffee, { salt: 'shell' })
  await replace()

  await $.exec(`start ${path.ahk}`)
}

const replace = async () => {

  const content = (await $.read<Buffer>(path.ahk))
    .toString()
    .replace(/\$([\w\d]+)/g, '__$1__')

  await $.write(path.ahk, content)
}

// export
export default main