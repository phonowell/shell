import $ from 'fire-keeper'
import c2a from 'coffee-ahk'

// variable

const path = {
  ahk: './source/index.ahk',
  coffee: './source/index.coffee',
} as const

// function

const main = async () => {

  await c2a(path.coffee, { salt: 'shell' })
  await replace()

  await $.remove_('./dist')
  await $.copy_(path.ahk, './dist')
}

const replace = async () => {

  const content = (await $.read_<Buffer>(path.ahk))
    .toString()
    .replace(/\$([\w\d]+)/g, '__$1__')

  await $.write_(path.ahk, content)
}

// export
export default main