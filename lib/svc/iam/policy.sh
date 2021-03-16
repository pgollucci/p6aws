######################################################################
#<
#
# Function: p6_aws_svc_iam_policy_saml(account_id, provider)
#
#  Args:
#	account_id -
#	provider -
#
#>
######################################################################
p6_aws_svc_iam_policy_saml() {
    local account_id="$1"
    local provider="$2"

    p6_aws_template_process "iam/saml.json" \
        "ACCOUNT_ID=$account_id" \
        "PROVIDER=$provider"
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_policy_s3_cloudtrail_write(trail_bucket, account_id)
#
#  Args:
#	trail_bucket -
#	account_id -
#
#>
######################################################################
p6_aws_svc_iam_policy_s3_cloudtrail_write() {
    local trail_bucket="$1"
    local account_id="$2"

    p6_aws_template_process "iam/s3_cloudtrail" \
        "TRAIL_BUCKET=$trail_bucket" \
        "ACCOUNT_ID=$account_id"
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_policy_cloudtrail_write(resource)
#
#  Args:
#	resource -
#
#>
######################################################################
p6_aws_svc_iam_policy_cloudtrail_write() {
    local resource="$1"

    p6_aws_template_process "iam/cloudtrail" \
        "RESOURCE=$resource"
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_policy_service_write(service)
#
#  Args:
#	service -
#
#>
######################################################################
p6_aws_svc_iam_policy_service_write() {
    local service="$1"

    p6_aws_template_process "iam/service" \
        "SERVICE=$service"
}
