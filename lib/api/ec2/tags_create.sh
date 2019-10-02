######################################################################
#<
#
# Function:
#	p6_aws_ec2_tags_create(resources, tags)
#
#  Args:
#	resources - 
#	tags - 
#
#>
######################################################################
p6_aws_ec2_tags_create() {
    local resources="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-tags --resources $resources --tags $tags "$@"
}