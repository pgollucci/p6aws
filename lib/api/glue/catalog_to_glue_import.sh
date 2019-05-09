p6_aws_glue_catalog_to_glue_import() {

    p6_log_or_run aws glue import-catalog-to-glue "$@"
}
