import $ from 'fire-keeper'
import transpile from 'coffee-ahk'

// variable

const Path = {
  ahk: './source/index.ahk',
  coffee: './source/index.coffee',
} as const

// function

const main_ = async (): Promise<void> => {

  await transpile(Path.coffee, {
    salt: 'shell',
  })
  await replace_()

  await $.remove_('./dist')
  await $.copy_(Path.ahk, './dist')
}

const replace_ = async (): Promise<void> => {

  const content = (
    await $.read_(Path.ahk) as string
  ).toString()

  const cont = content
    .replace(/\$([\w\d]+)/g, '__$1__')

  await $.write_(Path.ahk, cont)
}

// export
export default main_