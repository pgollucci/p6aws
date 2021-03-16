######################################################################
#<
#
# Function: p6_aws_svc_iam_role_saml_create(role_full_path, policy_arn, account_id, provider)
#
#  Args:
#	role_full_path -
#	policy_arn -
#	account_id -
#	provider -
#
#>
######################################################################
p6_aws_svc_iam_role_saml_create() {
    local role_full_path="$1"
    local policy_arn="$2"
    local account_id="$3"
    local provider="$4"

    local role_path=$(p6_uri_path "$role_full_path")
    local role_name=$(p6_uri_name "$role_full_path")

    local assume_role_policy_document=$(p6_aws_svc_iam_policy_saml "$account_id" "$provider")
    p6_aws_svc_iam_role_create "$role_path/" "$role_name" "$assume_role_policy_document"
    p6_aws_cli_cmd iam attach-role-policy "$role_name" "$policy_arn"

    # XXX: return
}

######################################################################
#<
#
# Function: p6_aws_svc_iam_password_policy_default()
#
#>
######################################################################
p6_aws_svc_iam_password_policy_default() {

    p6_aws_cli_cmd iam update-account-password-policy \
        --minimum-password-length 12 \
        --require-symbols \
        --require-numbers \
        --require-uppercase-characters \
        --require-lowercase-characters \
        --allow-users-to-change-password \
        --max-password-age 1095 \
        --password-reuse-prevention 1 \
        --hard-expiry

    p6_return_void
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
