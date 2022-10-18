import $ from 'fire-keeper'
import c2a from 'coffee-ahk'

// variable

const path = {
  ahk: './test/index.ahk',
  coffee: './test/index.coffee',
} as const

// function

const main = async () => {
  await $.remove(path.ahk)
  await makeIndex()
  await makeAhk()
  await $.exec(`start ${path.ahk}`)
}

const makeAhk = async () => {
  await c2a(path.coffee, {
    salt: 'shell',
  })
  await replace()
}

const makeIndex = async () => {
  const listFn = (await $.glob('./test/include/*.coffee')).map($.getBasename)

  const content = [
    '# @ts-check',
    ...listFn.map((name) => `import './include/${name}'`),
  ]

  await $.write(path.coffee, content.join('\n'))
}

const replace = async () => {
  const buffer = await $.read(path.ahk)
  if (!buffer) return
  const content = buffer.toString().replace(/\$([\w\d]+)/g, '__$1__')

  await $.write(path.ahk, content)
}

// export
export default main
