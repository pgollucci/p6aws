######################################################################
#<
#
# Function:
#	p6_aws_service_quotas_service_quota_template_disassociate()
#
#>
######################################################################
p6_aws_service_quotas_service_quota_template_disassociate() {

    p6_run_write_cmd aws service-quotas disassociate-service-quota-template "$@"
}