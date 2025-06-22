import c2a from 'coffee-ahk'
import { argv, exec, move, remove } from 'fire-keeper'

const compile = async (source: string) => {
  await c2a(`./src/${source}.test.coffee`, {
    salt: 'shell',
  })
  await move(`./src/${source}.test.ahk`, './temp')
}

const main = async () => {
  const target = ((await argv())._[1] ?? '').toString().trim()
  if (!target) throw new Error('Please specify a target, e.g. `pnpm test add`')

  await remove('./temp')

  await compile(target)
  await exec(`start ./temp/${target}.test.ahk`)
}

export default main
