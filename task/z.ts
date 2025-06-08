import c2a from 'coffee-ahk'
import { glob } from 'fire-keeper'

const main = async () => {
  const listScript = await glob('./scripts/*.coffee')
  for (const source of listScript) {
    await c2a(source, {
      salt: 'z',
    })
  }
}

export default main
