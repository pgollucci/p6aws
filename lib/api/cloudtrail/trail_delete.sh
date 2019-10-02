######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_trail_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_cloudtrail_trail_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws cloudtrail delete-trail --name $name "$@"
}