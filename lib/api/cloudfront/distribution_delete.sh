######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_distribution_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_cloudfront_distribution_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws cloudfront delete-distribution --id $id "$@"
}