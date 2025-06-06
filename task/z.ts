import { remove } from 'fire-keeper'

const main = async () => {
  await remove('./src/*.test.ts')
}
export default main
