import $ from 'fire-keeper'
import transpile from 'coffee-ahk'

// function

async function main_(): Promise<void> {

  await transpile('./source/index.coffee', {
    salt: 'shell',
  })
  await $.remove_('./dist')
  await $.copy_('./source/index.ahk', './dist')
}

// export
export default main_