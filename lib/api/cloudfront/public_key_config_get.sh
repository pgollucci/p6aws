######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_public_key_config_get(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_cloudfront_public_key_config_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront get-public-key-config --id $id "$@"
}