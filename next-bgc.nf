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

/**
  Downlodas FASTQ from NCBI's SRA
*/
process Download {
  prefetch '${params.accession}'
  cd '${params.accession}'
  fastq-dump --split-files --split-spot --skip-technical --gzip '${params.accession}'
}


/*
 * Define the workflow
 */
workflow {
  Download
}
