import $ from 'fire-keeper'

// function

const main = async () => {
  const listSource = await $.glob('./test/include/*.coffee')
  for (const source of listSource) {
    const content = await $.read<string>(source)
    if (!content) continue
    await $.write(source, content.replace(/\/include\//g, '/module/'))
  }
}

const y = async () => {
  const listSource = await $.glob('./test/include/*.coffee')
  const content = listSource
    .map((source) => {
      const basename = $.getBasename(source)
      return [`import './include/${basename}'`].join('\n')
    })
    .join('\n')
  await $.write('./test/index.coffee', content)
}

const z = async () => {
  const listSource = await $.glob('./source/include/*.coffee')
  const content = listSource
    .map((source) => {
      const basename = $.getBasename(source)
      return [
        `declare module '@/include/${basename}' {`,
        "  import Main from '@/type/method'",
        '  export default Main',
        '}',
      ].join('\n')
    })
    .join('\n\n')
  await $.write('./source/type/method.d.ts', content)
}

// export
export default main
