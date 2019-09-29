######################################################################
#<
#
# Function:
#      = p6_aws_deploy_get_on_premises_instances_batch(instance_names)
#
# Arg(s):
#    instance_names - 
#
#
#>
######################################################################
p6_aws_deploy_get_on_premises_instances_batch() {
    local instance_names="$1"
    shift 1

    p6_run_read_cmd aws deploy batch-get-on-premises-instances --instance-names $instance_names "$@"
}