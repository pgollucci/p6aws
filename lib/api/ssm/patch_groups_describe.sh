######################################################################
#<
#
# Function:
#      = p6_aws_ssm_patch_groups_describe()
#
#
#
#>
######################################################################
p6_aws_ssm_patch_groups_describe() {

    p6_run_read_cmd aws ssm describe-patch-groups "$@"
}