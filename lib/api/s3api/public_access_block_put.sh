######################################################################
#<
#
# Function:
#      = p6_aws_s3api_public_access_block_put(bucket, public_access_block_configuration)
#
# Arg(s):
#    bucket - 
#    public_access_block_configuration - 
#
#
#>
######################################################################
p6_aws_s3api_public_access_block_put() {
    local bucket="$1"
    local public_access_block_configuration="$2"
    shift 2

    p6_run_write_cmd aws s3api put-public-access-block --bucket $bucket --public-access-block-configuration $public_access_block_configuration "$@"
}