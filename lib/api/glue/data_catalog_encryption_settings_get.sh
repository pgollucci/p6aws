######################################################################
#<
#
# Function:
#      = p6_aws_glue_data_catalog_encryption_settings_get()
#
#
#
#>
######################################################################
p6_aws_glue_data_catalog_encryption_settings_get() {

    p6_run_read_cmd aws glue get-data-catalog-encryption-settings "$@"
}