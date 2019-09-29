######################################################################
#<
#
# Function:
#      = p6_aws_cloud9_environment_delete(environment_id)
#
# Arg(s):
#    environment_id - 
#
#
#>
######################################################################
p6_aws_cloud9_environment_delete() {
    local environment_id="$1"
    shift 1

    p6_run_write_cmd aws cloud9 delete-environment --environment-id $environment_id "$@"
}