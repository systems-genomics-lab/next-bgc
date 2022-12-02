params.accession = 'xxx'

process INFO {
  output:
  stdout
    
  script:
  """
  echo "Accession: "'${params.accession}'
  date
  """
}


/*
 * Define the workflow
 */
workflow {
  INFO()
}
