######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_invalidation_create(distribution_id)
#
# Arg(s):
#    distribution_id - 
#
#
#>
######################################################################
p6_aws_cloudfront_invalidation_create() {
    local distribution_id="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-invalidation --distribution-id $distribution_id "$@"
}