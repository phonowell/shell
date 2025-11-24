import c2a from 'coffee-ahk'
import { argv, exec, getBasename, glob, move, os, remove } from 'fire-keeper'

const compile = async (source: string) => {
  await c2a(`./src/${source}.test.coffee`, {
    salt: 'shell',
  })
  await move(`./src/${source}.test.ahk`, './temp')
}

const main = async () => {
  const target = ((await argv())._[1] ?? '').toString().trim()
  if (!target) {
    const allTestFiles = await glob('./src/*.test.coffee')
    for (const file of allTestFiles) {
      const target = getBasename(file).split('.')[0]
      await test(target)
    }
    return
  }

  await test(target)
}

const test = async (target: string) => {
  await remove('./temp')
  await compile(target)
  if (os() === 'windows') await exec(`start ./temp/${target}.test.ahk`)
}

export default main
