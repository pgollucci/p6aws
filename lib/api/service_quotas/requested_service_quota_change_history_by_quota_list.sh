######################################################################
#<
#
# Function:
#      = p6_aws_service_quotas_requested_service_quota_change_history_by_quota_list(service_code, quota_code)
#
# Arg(s):
#    service_code - 
#    quota_code - 
#
#
#>
######################################################################
p6_aws_service_quotas_requested_service_quota_change_history_by_quota_list() {
    local service_code="$1"
    local quota_code="$2"
    shift 2

    p6_run_read_cmd aws service-quotas list-requested-service-quota-change-history-by-quota --service-code $service_code --quota-code $quota_code "$@"
}