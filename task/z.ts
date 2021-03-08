import c2a from 'coffee-ahk'

// function

async function main_(): Promise<void> {

  await c2a('./script/index.coffee', {
    salt: 'z',
  })
}

// export
export default main_