params.accession = 'xxx'

/*
  Downlodas FASTQ from NCBI's SRA
*/
process FASTQ_DUMP {
  output:
  stdout
    
  script:
  """
  prefetch '${params.accession}'
  cd '${params.accession}'
  fastq-dump --split-files --split-spot --skip-technical --gzip '${params.accession}'
  """
}

/*
 * Define the workflow
 */
workflow {
  FASTQ_DUMP()
}
