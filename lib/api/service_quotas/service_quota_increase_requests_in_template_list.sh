######################################################################
#<
#
# Function:
#	p6_aws_service_quotas_service_quota_increase_requests_in_template_list()
#
#>
######################################################################
p6_aws_service_quotas_service_quota_increase_requests_in_template_list() {

    p6_run_read_cmd aws service-quotas list-service-quota-increase-requests-in-template "$@"
}