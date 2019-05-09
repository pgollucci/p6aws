p6_aws_glue_catalog_to_glue_import() {

    p6_run_write_cmd aws glue import-catalog-to-glue "$@"
}
