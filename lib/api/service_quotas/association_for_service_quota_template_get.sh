######################################################################
#<
#
# Function:
#	p6_aws_service_quotas_association_for_service_quota_template_get()
#
#>
######################################################################
p6_aws_service_quotas_association_for_service_quota_template_get() {

    p6_run_read_cmd aws service-quotas get-association-for-service-quota-template "$@"
}