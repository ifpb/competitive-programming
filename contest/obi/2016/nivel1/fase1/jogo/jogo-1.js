let inputStdin = ''

process.stdin.on('data', (data) => {
  inputStdin += data
})

process.stdin.on('end', (data) => {
  const lines = inputStdin.split('\n')

  const p = parseInt(lines[0])
  const d1 = parseInt(lines[1])
  const d2 = parseInt(lines[2])

  if((d1 + d2) % 2 == p)
      console.log(0)
  else
      console.log(1)

})
