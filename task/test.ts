import c2a from 'coffee-ahk'
import $ from 'fire-keeper'

// variable

const path = {
  ahk: './test/index.ahk',
  coffee: './test/index.coffee',
} as const

// function

const main = async () => {
  const target = $.toString($.argv()._[1] || '*')
  await $.remove(path.ahk)
  await makeIndex(target)
  await makeAhk()
  await $.exec(`start ${path.ahk}`)
}

const makeAhk = async () => {
  await c2a(path.coffee, {
    salt: 'shell',
  })
  await replace()
}

const makeIndex = async (target: string) => {
  const listFn = [
    ...(
      await $.glob([
        `./test/include/${target}.coffee`,
        '!./test/include/end.coffee',
      ])
    ).map($.getBasename),
    'end',
  ]

  const content = [
    '# @ts-check',
    "import '../script/include/head.ahk'",
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
