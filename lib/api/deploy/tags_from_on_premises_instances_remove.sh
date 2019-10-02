######################################################################
#<
#
# Function:
#	p6_aws_deploy_tags_from_on_premises_instances_remove(tags, instance_names)
#
#  Args:
#	tags - 
#	instance_names - 
#
#>
######################################################################
p6_aws_deploy_tags_from_on_premises_instances_remove() {
    local tags="$1"
    local instance_names="$2"
    shift 2

    p6_run_write_cmd aws deploy remove-tags-from-on-premises-instances --tags $tags --instance-names $instance_names "$@"
}