######################################################################
#<
#
# Function:
#      = p6_aws_cloud9_environment_memberships_describe()
#
#
#
#>
######################################################################
p6_aws_cloud9_environment_memberships_describe() {

    p6_run_read_cmd aws cloud9 describe-environment-memberships "$@"
}