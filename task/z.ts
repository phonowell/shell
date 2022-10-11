import $ from 'fire-keeper'

// function

const main = async () => {
  const listSource = await $.glob('./source/include/*.coffee')
  const content = listSource
    .map((source) => {
      const basename = $.getBasename(source)
      return [
        `import $${basename} from './include/${basename}'`,
        `$mixin $, ${basename}: $${basename}`,
      ].join('\n')
    })
    .join('\n')
  await $.write('./source/index.coffee', content)
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
