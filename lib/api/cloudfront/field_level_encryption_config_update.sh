######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_field_level_encryption_config_update(field_level_encryption_config, id)
#
#  Args:
#	field_level_encryption_config - 
#	id - 
#
#>
######################################################################
p6_aws_cloudfront_field_level_encryption_config_update() {
    local field_level_encryption_config="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws cloudfront update-field-level-encryption-config --field-level-encryption-config $field_level_encryption_config --id $id "$@"
}