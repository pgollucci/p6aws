######################################################################
#<
#
# Function:
#      = p6_aws_cognito_sync_to_dataset_subscribe(identity_pool_id, identity_id, dataset_name, device_id)
#
# Arg(s):
#    identity_pool_id - 
#    identity_id - 
#    dataset_name - 
#    device_id - 
#
#
#>
######################################################################
p6_aws_cognito_sync_to_dataset_subscribe() {
    local identity_pool_id="$1"
    local identity_id="$2"
    local dataset_name="$3"
    local device_id="$4"
    shift 4

    p6_run_write_cmd aws cognito-sync subscribe-to-dataset --identity-pool-id $identity_pool_id --identity-id $identity_id --dataset-name $dataset_name --device-id $device_id "$@"
}