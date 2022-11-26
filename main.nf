params.accession = 'xxx'

process INFO {
  output:
    stdout
    
  script:
  """
  echo "Accession: "'${params.accession}'
  date
  deepbgc info
  """
}


/*
 * Define the workflow
 */
workflow {
  INFO()
}
