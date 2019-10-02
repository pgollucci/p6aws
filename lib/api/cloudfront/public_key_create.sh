######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_public_key_create(public_key_config)
#
#  Args:
#	public_key_config - 
#
#>
######################################################################
p6_aws_cloudfront_public_key_create() {
    local public_key_config="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-public-key --public-key-config $public_key_config "$@"
}