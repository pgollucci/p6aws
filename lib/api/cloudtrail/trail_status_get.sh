######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_trail_status_get(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_cloudtrail_trail_status_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws cloudtrail get-trail-status --name $name "$@"
}