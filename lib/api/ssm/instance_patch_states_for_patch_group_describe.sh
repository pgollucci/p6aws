######################################################################
#<
#
# Function:
#      = p6_aws_ssm_instance_patch_states_for_patch_group_describe(patch_group)
#
# Arg(s):
#    patch_group - 
#
#
#>
######################################################################
p6_aws_ssm_instance_patch_states_for_patch_group_describe() {
    local patch_group="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-instance-patch-states-for-patch-group --patch-group $patch_group "$@"
}