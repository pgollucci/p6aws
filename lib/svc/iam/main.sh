p6_aws_iam_svc_template_process() {
    local infile="$1"
    shift 1

    local dir=$(p6_transient_create "aws.tmpl")
    local outfile="$dir/outfile"

    local fill_args=$(p6_template_fill_args "" "," " " "$@")

    p6_template_fill_in "P6_DFZ_SRC_P6M7G8_DIR/p6aws/tmpl/$infile" "$outfile" "" "$fill_args"
    p6_file_display "$outfile"

    p6_transient_delete "$outfile"
}

p6_aws_iam_svc_role_policies() {
   local role_name="$1"

    p6_aws_iam_attached_role_policies_list \
	--output text \
	--role-name $role_name \
	--query "'AttachedPolicies[].[PolicyName]'"
}

p6_aws_iam_svc_roles_list() {

    p6_aws_iam_roles_list \
	--output text \
	--query "'Roles[].[RoleId,RoleName,Arn]'"
}

p6_aws_iam_svc_users_list() {

    p6_aws_iam_users_list \
	--output text \
	--query "'Users[].[UserId,UserName,Arn]'"
}

p6_aws_iam_svc_password_policy_default() {

    p6_aws_iam_account_password_policy_update \
	--minimum-password-length 12 \
	--require-symbols \
	--require-numbers \
	--require-uppercase-characters \
	--require-lowercase-characters \
	--allow-users-to-change-password \
	--max-password-age 1095 \
	--password-reuse-prevention 1 \
	--hard-expiry
}

p6_aws_iam_svc_role_saml_create() {
    local role_full_path="$1"
    locsl policy_arn="$2"
    local account_id="$3"
    local provider="$4"

    local role_path=$(p6_uri_path "$role_full_path")
    local role_name=$(p6_uri_name "$role_full_path")

    local assume_role_policy_document=$(p6_aws_iam_svc_policy_saml "$account_id" "$provider")
    p6_aws_iam_svc_role_create "$role_path" "$role_name" "$assume_role_policy_document"
    p6_aws_iam_role_policy_attach "$role_name" "$policy_arn"
}

p6_aws_iam_svc_policy_saml() {
    local account_id="$1"
    local provider="$2"

    p6_aws_iam_svc_template_process "iam/saml" \
				    "ACCOUNT_ID=$account_id" \
				    "PROVIDER=$provider"
}

p6_aws_iam_svc_role_create() {
    local role_path="$1"
    local role_name="$2"
    local assume_role_policy_document="$3"

    p6_aws_iam_role_create "$role_name" "$assume_role_policy_document" \
			   --output text \
			   --path $role_path \
			   --query "'Role.Arn'"
}
