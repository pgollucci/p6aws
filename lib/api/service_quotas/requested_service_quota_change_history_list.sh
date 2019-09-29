######################################################################
#<
#
# Function:
#      = p6_aws_service_quotas_requested_service_quota_change_history_list()
#
#
#
#>
######################################################################
p6_aws_service_quotas_requested_service_quota_change_history_list() {

    p6_run_read_cmd aws service-quotas list-requested-service-quota-change-history "$@"
}