######################################################################
#<
#
# Function:
#      = p6_aws_service_quotas_service_quota_increase_request_from_template_get(service_code, quota_code, aws_region)
#
# Arg(s):
#    service_code - 
#    quota_code - 
#    aws_region - 
#
#
#>
######################################################################
p6_aws_service_quotas_service_quota_increase_request_from_template_get() {
    local service_code="$1"
    local quota_code="$2"
    local aws_region="$3"
    shift 3

    p6_run_read_cmd aws service-quotas get-service-quota-increase-request-from-template --service-code $service_code --quota-code $quota_code --aws-region $aws_region "$@"
}