import $ from 'fire-keeper'

// variable

const flag = '# @ts-check'

// function

const main = async () => {
  const listSource = await $.glob('./source/**/*.coffee')
  for (const source of listSource) {
    const content = await $.read<string>(source)
    if (!content) continue

    const listContent = content.split('\n')
    if (listContent[0] === flag) continue
    listContent.unshift(flag)
    await $.write(source, listContent.join('\n'))
  }
}

// export
export default main
