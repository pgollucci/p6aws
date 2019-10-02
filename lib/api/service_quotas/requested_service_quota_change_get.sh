######################################################################
#<
#
# Function:
#	p6_aws_service_quotas_requested_service_quota_change_get(request_id)
#
#  Args:
#	request_id - 
#
#>
######################################################################
p6_aws_service_quotas_requested_service_quota_change_get() {
    local request_id="$1"
    shift 1

    p6_run_read_cmd aws service-quotas get-requested-service-quota-change --request-id $request_id "$@"
}