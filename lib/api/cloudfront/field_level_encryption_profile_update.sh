######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_field_level_encryption_profile_update(field_level_encryption_profile_config, id)
#
# Arg(s):
#    field_level_encryption_profile_config - 
#    id - 
#
#
#>
######################################################################
p6_aws_cloudfront_field_level_encryption_profile_update() {
    local field_level_encryption_profile_config="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws cloudfront update-field-level-encryption-profile --field-level-encryption-profile-config $field_level_encryption_profile_config --id $id "$@"
}