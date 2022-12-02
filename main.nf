params.accession = 'xxx'

process INFO {
  output:
  stdout
    
  script:
  """
  echo "Accession: "'${params.accession}'
  date
  kraken2
  """
}


/*
 * Define the workflow
 */
workflow {
  INFO()
}
