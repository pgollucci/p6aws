######################################################################
#<
#
# Function:
#      = p6_aws_service_quotas_aws_default_service_quotas_list(service_code)
#
# Arg(s):
#    service_code - 
#
#
#>
######################################################################
p6_aws_service_quotas_aws_default_service_quotas_list() {
    local service_code="$1"
    shift 1

    p6_run_read_cmd aws service-quotas list-aws-default-service-quotas --service-code $service_code "$@"
}