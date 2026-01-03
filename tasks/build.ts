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

  const content = buffer.toString().replace(/\$([\w\d]+)/g, `${basename}_$1`)
  await write(`./dist/${basename}.coffee`, content)
}

const generateIndex = async (listCoffee: string[]) => {
  const basenames = listCoffee.map((source) => getBasename(source)).sort()

  // Generate index.coffee (using CoffeeScript indentation syntax)
  const coffeeImports = basenames
    .map((name) => `import $${name} from './${name}'`)
    .join('\n')
  const coffeeExports = `export default\n  ${basenames.map((name) => `${name}: $${name}`).join('\n  ')}`
  await write('./dist/index.coffee', `${coffeeImports}\n\n${coffeeExports}\n`)

  // Generate index.d.ts
  const typeImports = basenames
    .map((name) => `export { default as ${name} } from './${name}'`)
    .join('\n')
  await write('./dist/index.d.ts', `${typeImports}\n`)
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

  // Generate index files
  await generateIndex(listCoffee)
}

export default main
