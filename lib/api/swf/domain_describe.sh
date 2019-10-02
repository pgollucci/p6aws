######################################################################
#<
#
# Function:
#	p6_aws_swf_domain_describe(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_swf_domain_describe() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws swf describe-domain --name $name "$@"
}