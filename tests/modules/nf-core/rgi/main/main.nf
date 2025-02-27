#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { RGI_MAIN } from '../../../../../modules/nf-core/rgi/main/main.nf'

workflow test_rgi_main {

    input = [ 
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['haemophilus_influenzae']['genome']['genome_fna_gz'], checkIfExists: true) 
    ]

    RGI_MAIN ( input )
}
