######################################################################
#<
#
# Function:
#      = p6_aws_iam_service_last_accessed_details_generate(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_iam_service_last_accessed_details_generate() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws iam generate-service-last-accessed-details --arn $arn "$@"
}