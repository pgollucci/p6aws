######################################################################
#<
#
# Function:
#	p6_aws_datasync_location_s3_describe(location_arn)
#
#  Args:
#	location_arn - 
#
#>
######################################################################
p6_aws_datasync_location_s3_describe() {
    local location_arn="$1"
    shift 1

    p6_run_read_cmd aws datasync describe-location-s3 --location-arn $location_arn "$@"
}