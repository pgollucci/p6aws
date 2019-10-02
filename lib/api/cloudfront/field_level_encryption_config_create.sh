######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_field_level_encryption_config_create(field_level_encryption_config)
#
#  Args:
#	field_level_encryption_config - 
#
#>
######################################################################
p6_aws_cloudfront_field_level_encryption_config_create() {
    local field_level_encryption_config="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-field-level-encryption-config --field-level-encryption-config $field_level_encryption_config "$@"
}