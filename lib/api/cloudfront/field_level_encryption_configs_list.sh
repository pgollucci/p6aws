######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_field_level_encryption_configs_list()
#
#>
######################################################################
p6_aws_cloudfront_field_level_encryption_configs_list() {

    p6_run_read_cmd aws cloudfront list-field-level-encryption-configs "$@"
}