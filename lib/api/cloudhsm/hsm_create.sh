######################################################################
#<
#
# Function:
#	p6_aws_cloudhsm_hsm_create(subnet_id, ssh_key, iam_role_arn, subscription_type)
#
#  Args:
#	subnet_id - 
#	ssh_key - 
#	iam_role_arn - 
#	subscription_type - 
#
#>
######################################################################
p6_aws_cloudhsm_hsm_create() {
    local subnet_id="$1"
    local ssh_key="$2"
    local iam_role_arn="$3"
    local subscription_type="$4"
    shift 4

    p6_run_write_cmd aws cloudhsm create-hsm --subnet-id $subnet_id --ssh-key $ssh_key --iam-role-arn $iam_role_arn --subscription-type $subscription_type "$@"
}