######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_field_level_encryption_config_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_cloudfront_field_level_encryption_config_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws cloudfront delete-field-level-encryption-config --id $id "$@"
}