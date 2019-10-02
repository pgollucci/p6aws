######################################################################
#<
#
# Function:
#	p6_aws_iam_instance_profiles_list()
#
#>
######################################################################
p6_aws_iam_instance_profiles_list() {

    p6_run_read_cmd aws iam list-instance-profiles "$@"
}