params.accession = 'xxx'

process INFO {
  process.container = 'ghcr.io/systems-genomics-lab/bgc-engine'
  docker.enabled = true
  output:
  stdout
    
  script:
  """
  echo "Accession: "'${params.accession}'
  date
  deepbpc info
  """
}


/*
 * Define the workflow
 */
workflow {
  INFO()
}
