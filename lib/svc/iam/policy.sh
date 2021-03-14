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

######################################################################
#<
#
# Function: p6_aws_svc_iam_policy_to_role(role_full_path, policy_arn)
#
#  Args:
#	role_full_path -
#	policy_arn -
#
#>
######################################################################
p6_aws_svc_iam_policy_to_role() {
    local role_full_path="$1"
    local policy_arn="$2"

    local role_name=$(p6_uri_name "$role_full_path")

    p6_aws_cli_cmd iam attach-policy-role \
        --role-name $role_name \
        --policy-arn $policy_arn

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_policy_create(policy_full_path, policy_description, policy_document)
#
#  Args:
#	policy_full_path -
#	policy_description -
#	policy_document -
#
#>
######################################################################
p6_aws_svc_iam_policy_create() {
    local policy_full_path="$1"
    local policy_description="$2"
    local policy_document="$3"

    local policy_path=$(p6_uri_path "$policy_full_path")
    local policy_name=$(p6_uri_name "$policy_full_path")

    local policy_arn=$(
        p6_aws_cli_cmd iam create-policy \
            --output text \
            --path $policy_path/ \
            --policy-name $policy_name \
            --description $policy_description \
            --policy-document $policy_document \
            --query "Policy.Arn"
    )

    p6_return_aws_str "$policy_arn"
}
