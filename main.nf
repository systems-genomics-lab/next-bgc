params.accession = 'xxx'

process INFO {
  output:
  stdout
    
  script:
  """
  echo "Accession: "'${params.accession}'
  date
  /apps/kraken2/bin/kraken2
  """
}


/*
 * Define the workflow
 */
workflow {
  INFO()
}
