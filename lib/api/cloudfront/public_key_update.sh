######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_public_key_update(public_key_config, id)
#
# Arg(s):
#    public_key_config - 
#    id - 
#
#
#>
######################################################################
p6_aws_cloudfront_public_key_update() {
    local public_key_config="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws cloudfront update-public-key --public-key-config $public_key_config --id $id "$@"
}