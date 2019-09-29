######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_chap_credentials_delete(target_arn, initiator_name)
#
# Arg(s):
#    target_arn - 
#    initiator_name - 
#
#
#>
######################################################################
p6_aws_storagegateway_chap_credentials_delete() {
    local target_arn="$1"
    local initiator_name="$2"
    shift 2

    p6_run_write_cmd aws storagegateway delete-chap-credentials --target-arn $target_arn --initiator-name $initiator_name "$@"
}