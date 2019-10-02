######################################################################
#<
#
# Function:
#	p6_aws_service_quotas_service_quota_increase_request_into_template_put(quota_code, service_code, aws_region, desired_value)
#
#  Args:
#	quota_code - 
#	service_code - 
#	aws_region - 
#	desired_value - 
#
#>
######################################################################
p6_aws_service_quotas_service_quota_increase_request_into_template_put() {
    local quota_code="$1"
    local service_code="$2"
    local aws_region="$3"
    local desired_value="$4"
    shift 4

    p6_run_write_cmd aws service-quotas put-service-quota-increase-request-into-template --quota-code $quota_code --service-code $service_code --aws-region $aws_region --desired-value $desired_value "$@"
}