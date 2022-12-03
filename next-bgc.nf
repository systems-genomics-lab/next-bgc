# params.accession = 'xxx'

/*
  Downlodas FASTQ from NCBI's SRA
*/
process FASTQ_DUMP {
  input:
  val accession
  
  output:
  stdout
    
  script:
  """
  prefetch '${params.accession}'
  cd '${params.accession}'
  fastq-dump --split-files --split-spot --skip-technical --gzip '${accession}'
  """
}

/*
 * Define the workflow
 */
workflow {
  Channel.of('SRR6145058', 'SRR6145059') | FASTQ_DUMP
}
