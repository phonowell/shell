import { glob, read, run, write } from 'fire-keeper'

const main = async () => {
  const listTest = await glob('./src/*.test.coffee')

  for (const source of listTest) {
    await run(async () => {
      const buffer = await read(source)
      if (!buffer) return

      const content = buffer.toString().trim()
      if (content.endsWith('$exit()')) return

      const result = [
        content,
        '',
        '# 退出测试用例',
        "import $exit from '../dist/exit'",
        '$exit()',
      ].join('\n')
      await write(source, result)
    })
  }
}

export default main
