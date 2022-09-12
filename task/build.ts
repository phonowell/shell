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

  await $.remove('./dist')
  await $.copy(path.ahk, './dist')
}

const replace = async () => {
  const buffer = await $.read(path.ahk)
  if (!buffer) return
  const content = buffer.toString().replace(/\$([\w\d]+)/g, '__$1__')

  await $.write(path.ahk, content)
}

// export
export default main
