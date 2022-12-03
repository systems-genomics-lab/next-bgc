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


process VERSION {
  output:
  stdout
    
  script:
  """
  kraken2 --version
  """
}


/*
 * Define the workflow
 */
workflow {
  INFO()
  VERSION()
}
