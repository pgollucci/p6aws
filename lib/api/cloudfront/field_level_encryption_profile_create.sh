######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_field_level_encryption_profile_create(field_level_encryption_profile_config)
#
# Arg(s):
#    field_level_encryption_profile_config - 
#
#
#>
######################################################################
p6_aws_cloudfront_field_level_encryption_profile_create() {
    local field_level_encryption_profile_config="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-field-level-encryption-profile --field-level-encryption-profile-config $field_level_encryption_profile_config "$@"
}