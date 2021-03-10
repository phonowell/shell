import c2a from 'coffee-ahk'

// function

const main_ = async (): Promise<void> => {

  await c2a('./script/index.coffee', {
    salt: 'z',
  })
}

// export
export default main_