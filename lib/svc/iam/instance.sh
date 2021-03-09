######################################################################
#<
#
# Function: p6_aws_iam_svc_instance_profiles_list()
#
#>
######################################################################
p6_aws_iam_svc_instance_profiles_list() {

    p6_aws_cmd iam list-instance-profiles \
	       --output text \
	       --query "'InstanceProfiles[].[InstanceProfileId, InstanceProfileName]'"
}