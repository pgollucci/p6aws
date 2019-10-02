######################################################################
#<
#
# Function:
#	p6_aws_securityhub_insight_create(name, filters, group_by_attribute)
#
#  Args:
#	name - 
#	filters - 
#	group_by_attribute - 
#
#>
######################################################################
p6_aws_securityhub_insight_create() {
    local name="$1"
    local filters="$2"
    local group_by_attribute="$3"
    shift 3

    p6_run_write_cmd aws securityhub create-insight --name $name --filters $filters --group-by-attribute $group_by_attribute "$@"
}