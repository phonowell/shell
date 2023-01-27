import c2a from 'coffee-ahk'
import $ from 'fire-keeper'

// variable

const path = {
  ahk: './source/index.ahk',
  coffee: './source/index.coffee',
} as const

// function

const copy = async () => {
  await $.copy('./source/module/*', './dist/module')
  await $.copy('./source/type/*', './dist/type')
}

const main = async () => {
  await $.remove('./dist')
  await makeIndex()
  await makeAhk()
  await makeDoc()
  await copy()
}

const makeAhk = async () => {
  await c2a(path.coffee, { salt: 'shell' })
  await replace()
  await $.copy(path.ahk, './dist')
}

const makeDoc = async () => {
  const listFn = (await $.glob('./source/module/*.coffee')).map($.getBasename)

  const content = [
    '# Functions',
    '',
    `\`${listFn.length}\` functions, at \`${new Date().toISOString()}\`.`,
    ...listFn.map((fn) => `- [${fn}](../source/module/${fn}.coffee)`),
  ]

  await $.write('./doc/functions.md', content.join('\n'))
}

const makeIndex = async () => {
  const listFn = (await $.glob('./source/module/*.coffee')).map($.getBasename)
  const listFnA = listFn.filter((name) => !name.endsWith('Shell'))

  const content = [
    '# @ts-check',
    ...listFnA.map((name) => `import $${name} from './module/${name}'`),
    // ...listFnB.map((name) => `import './module/${name}'`),
    '$ = {}',
    ...listFnA.map((name) => `$mixin $, ${name}: $${name}`),
  ]

  await $.write('./source/index.coffee', content.join('\n'))
}

const replace = async () => {
  const buffer = await $.read(path.ahk)
  if (!buffer) return

  const content = buffer.toString().replace(/\$([\w\d]+)/g, '__$1__')
  await $.write(path.ahk, content)
}

// export
export default main
