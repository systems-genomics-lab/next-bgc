params.accession = 'xxx'

process INFO {
  output:
  stdout
    
  script:
  """
  echo "Accession: "'${params.accession}'
  date
  deepbgc --version
  deepbgc info
  """
}


/*
 * Define the workflow
 */
workflow {
  INFO()
}
