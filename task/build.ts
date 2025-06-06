import {
  copy,
  getBasename,
  glob,
  read,
  remove,
  runConcurrent,
  write,
} from 'fire-keeper'

const replaceDollars = async (source: string) => {
  const buffer = await read(source)
  if (!buffer) return

  const basename = getBasename(source)

  const content = buffer
    .toString()
    .replace(/\$([\w\d]+)/g, `__${basename}_$1__`)
  await write(`./dist/${basename}.coffee`, content)
}

const main = async () => {
  // cleanup
  await remove('./dist')

  const listCoffee = (await glob('./src/*.coffee')).filter(
    (s) => !s.includes('.test.coffee'),
  )

  await runConcurrent(
    5,
    listCoffee.map((source) => () => replaceDollars(source)),
  )

  await copy('./src/*.d.ts', './dist')
}

export default main
