import { copy, getBasename, glob } from 'fire-keeper'

const main = async () => {
  const list = await glob('./test/*.coffee')

  for (const src of list) {
    const basename = getBasename(src)
    await copy(src, './src', {
      filename: `${basename}.test.coffee`,
    })
  }
}
export default main
