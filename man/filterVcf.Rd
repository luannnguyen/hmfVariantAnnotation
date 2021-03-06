% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preProcessHmfPlOutput.R
\name{filterVcf}
\alias{filterVcf}
\title{Filter vcf for compatibility with downstream functions}
\usage{
filterVcf(
  vcf.file,
  out.file,
  mode = NULL,
  bed.file = BED_FILE,
  java.path = JAVA_PATH,
  snpsift.path = SNPSIFT_PATH
)
}
\arguments{
\item{vcf.file}{Path to vcf file (gzip compressed)}

\item{out.file}{Path to output vcf file (make sure to add .gz at the end)}

\item{mode}{Can be 'germ' or 'som'}

\item{bed.file}{Path to bed file specifying the genome intervals to keep (defaults ot the one 
stored in this package)}

\item{java.path}{Path to java binary (defaults to the installed JRE location)}

\item{snpsift.path}{Path to SnpSift jar (defaults to the one included in this package)}
}
\value{
Nothing but writes a gzipped vcf file
}
\description{
Wrapper function for SnpSift filter and SnpSift intervals. Selects PASS variants and 
variants at coords specified in bed file. For germline vcfs, remove somatic variants.
}
