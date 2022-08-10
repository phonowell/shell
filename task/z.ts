import $ from 'fire-keeper'
import c2a from 'coffee-ahk'

// function

const main = async () => {
  await c2a('./script/index.coffee', { salt: 'z' })
  await $.exec('start ./script/index.ahk')
}

// export
export default main