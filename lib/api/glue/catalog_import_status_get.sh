p6_aws_glue_catalog_import_status_get() {

    p6_log_and_run aws glue get-catalog-import-status "$@"
}
