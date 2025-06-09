import c2a from 'coffee-ahk'
import { watch } from 'fire-keeper'
import { debounce } from 'radash'

import build from './build.js'

const main = () => {
  watch(
    'src',
    debounce(
      {
        delay: 1e3,
      },
      async () => {
        try {
          await build()
        } catch (e) {
          console.error(e)
        }
      },
    ),
  )

  watch(
    'scripts',
    debounce(
      {
        delay: 1e3,
      },
      async (source) => {
        if (!source.endsWith('.coffee')) return
        try {
          await c2a(source, {
            salt: 'z',
          })
        } catch (e) {
          console.error(e)
        }
      },
    ),
  )
}

export default main
