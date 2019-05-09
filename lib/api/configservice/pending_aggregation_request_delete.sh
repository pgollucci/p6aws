p6_aws_configservice_pending_aggregation_request_delete() {
    local requester_account_id="$1"
    local requester_aws_region="$2"
    shift 2

    p6_run_write_cmd aws configservice delete-pending-aggregation-request --requester-account-id $requester_account_id --requester-aws-region $requester_aws_region "$@"
}
