######################################################################
#<
#
# Function:
#      = p6_aws_cognito_sync_dataset_describe(identity_pool_id, identity_id, dataset_name)
#
# Arg(s):
#    identity_pool_id - 
#    identity_id - 
#    dataset_name - 
#
#
#>
######################################################################
p6_aws_cognito_sync_dataset_describe() {
    local identity_pool_id="$1"
    local identity_id="$2"
    local dataset_name="$3"
    shift 3

    p6_run_read_cmd aws cognito-sync describe-dataset --identity-pool-id $identity_pool_id --identity-id $identity_id --dataset-name $dataset_name "$@"
}