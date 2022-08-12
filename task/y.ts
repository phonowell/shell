import $ from 'fire-keeper'

// function

const main = async () => {
  console.log('good bye world')
  await $.sleep(1e3)
  process.exit(10086)
}

// export
export default main
