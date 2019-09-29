######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_invalidations_list(distribution_id)
#
# Arg(s):
#    distribution_id - 
#
#
#>
######################################################################
p6_aws_cloudfront_invalidations_list() {
    local distribution_id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront list-invalidations --distribution-id $distribution_id "$@"
}