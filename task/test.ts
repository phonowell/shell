import c2a from 'coffee-ahk'
import {
  argv,
  exec,
  getBasename,
  glob,
  os,
  read,
  remove,
  sleep,
  write,
} from 'fire-keeper'

const compile = async (source: string) => {
  // Read the test file
  const buffer = await read(`./src/${source}.test.coffee`)
  if (!buffer) return

  // Replace $ prefix with testname_
  const content = buffer.toString().replace(/\$([\w\d]+)/g, `${source}_$1`)

  // Write transformed file to temp location
  await write(`./temp/${source}.test.coffee`, content)

  // Compile the transformed file
  await c2a(`./temp/${source}.test.coffee`, {
    salt: 'shell',
  })

  // Clean up the temporary coffee file
  await remove(`./temp/${source}.test.coffee`)
}

const main = async () => {
  const target = ((await argv())._[1] ?? '').toString().trim()
  if (!target) {
    const allTestFiles = await glob('./src/*.test.coffee')
    for (const file of allTestFiles) {
      const target = getBasename(file).split('.')[0]
      await test(target)
      await sleep(1e3)
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
