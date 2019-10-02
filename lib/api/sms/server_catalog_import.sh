######################################################################
#<
#
# Function:
#	p6_aws_sms_server_catalog_import()
#
#>
######################################################################
p6_aws_sms_server_catalog_import() {

    p6_run_write_cmd aws sms import-server-catalog "$@"
}