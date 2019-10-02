######################################################################
#<
#
# Function:
#	p6_aws_cognito_sync_records_list(identity_pool_id, identity_id, dataset_name)
#
#  Args:
#	identity_pool_id - 
#	identity_id - 
#	dataset_name - 
#
#>
######################################################################
p6_aws_cognito_sync_records_list() {
    local identity_pool_id="$1"
    local identity_id="$2"
    local dataset_name="$3"
    shift 3

    p6_run_read_cmd aws cognito-sync list-records --identity-pool-id $identity_pool_id --identity-id $identity_id --dataset-name $dataset_name "$@"
}