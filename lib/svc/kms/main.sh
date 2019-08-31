p6_aws_kms_svc_list_aliases() {

    p6_aws_kms_aliases_list \
	--output text \
	--query "Aliases[]" | \
	sort
}

# XXX: move to app
p6_aws_kms_svc_key_make() {
    local account_id="$1"
    local key_description="$2"
    local key_alias="$3"

    local key_admin_principals="arn:aws:iam::${account_id}:role/SSO/SSO_Admin"
    local key_user_principals="arn:aws:iam::${account_id}:role/SSO/SSO_Admin"

    local key_policy=$(p6_aws_util_template_process "iam/kms" "ACCOUNT_ID=$account_id" "KEY_ADMIN_PRINCIPALS=$key_admin_principals" "KEY_USER_PRINCIPALS=$key_user_principals")

    local key_id=$(p6_aws_kms_key_create "$key_description" "$key_policy")
    p6_aws_kms_key_alias "$key_alias" "$key_id"

    p6_return "$key_id"
}

p6_aws_kms_key_create() {
    local key_description="$1"
    local key_policy="$2"

    p6_aws_kms_key_create \
	--description $key_description \
	--policy $key_policy | \
	json_key_2_value "KeyId" "-" # XXX: p6 me
}
