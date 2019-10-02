######################################################################
#<
#
# Function:
#	p6_aws_cloud9_environments_describe(environment_ids)
#
#  Args:
#	environment_ids - 
#
#>
######################################################################
p6_aws_cloud9_environments_describe() {
    local environment_ids="$1"
    shift 1

    p6_run_read_cmd aws cloud9 describe-environments --environment-ids $environment_ids "$@"
}