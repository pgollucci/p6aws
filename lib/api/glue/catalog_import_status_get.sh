######################################################################
#<
#
# Function:
#	p6_aws_glue_catalog_import_status_get()
#
#>
######################################################################
p6_aws_glue_catalog_import_status_get() {

    p6_run_read_cmd aws glue get-catalog-import-status "$@"
}