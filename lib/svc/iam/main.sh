######################################################################
#<
#
# Function: p6_aws_iam_svc_instance_profiles_list()
#
#>
######################################################################
p6_aws_iam_svc_instance_profiles_list() {

    p6_aws_cmd iam list-instance-profiles \
	       --output text \
	       --query "'InstanceProfiles[].[InstanceProfileId, InstanceProfileName]'"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_role_policies(role_name)
#
#  Args:
#	role_name - 
#
#>
######################################################################
p6_aws_iam_svc_role_policies() {
   local role_name="$1"

   p6_aws_cmd iam list-attached-role-policies \
	      --output text \
	      --role-name $role_name \
	      --query "'AttachedPolicies[].[PolicyName]'"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_roles_list()
#
#>
######################################################################
p6_aws_iam_svc_roles_list() {

    p6_aws_cmd iam list-roles \
	       --output text \
	       --query "'Roles[].[RoleId,RoleName,Arn]'"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_users_list()
#
#>
######################################################################
p6_aws_iam_svc_users_list() {

    p6_aws_cmd iam list-users \
	       --output text \
	       --query "'Users[].[UserId,UserName,Arn]'"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_password_policy_default()
#
#>
######################################################################
p6_aws_iam_svc_password_policy_default() {

    p6_aws_cmd iam update-account-password-policy \
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
# Function: p6_aws_iam_svc_role_saml_create(role_full_path, policy_arn, account_id, provider)
#
#  Args:
#	role_full_path - 
#	policy_arn - 
#	account_id - 
#	provider - 
#
#>
######################################################################
p6_aws_iam_svc_role_saml_create() {
    local role_full_path="$1"
    local policy_arn="$2"
    local account_id="$3"
    local provider="$4"

    local role_path=$(p6_uri_path "$role_full_path")
    local role_name=$(p6_uri_name "$role_full_path")

    local assume_role_policy_document=$(p6_aws_iam_svc_policy_saml "$account_id" "$provider")
    p6_aws_iam_svc_role_create "$role_path/" "$role_name" "$assume_role_policy_document"
    p6_aws_cmd iam attach-role-policy "$role_name" "$policy_arn"

    # XXX: return
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_policy_saml(account_id, provider)
#
#  Args:
#	account_id - 
#	provider - 
#
#>
######################################################################
p6_aws_iam_svc_policy_saml() {
    local account_id="$1"
    local provider="$2"

    p6_aws_template_process "iam/saml.json" \
				 "ACCOUNT_ID=$account_id" \
				 "PROVIDER=$provider"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_policy_s3_cloudtrail_write(trail_bucket, account_id)
#
#  Args:
#	trail_bucket - 
#	account_id - 
#
#>
######################################################################
p6_aws_iam_svc_policy_s3_cloudtrail_write() {
    local trail_bucket="$1"
    local account_id="$2"

    p6_aws_template_process "iam/s3_cloudtrail" \
				 "TRAIL_BUCKET=$trail_bucket" \
				 "ACCOUNT_ID=$account_id"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_policy_cloudtrail_write(resource)
#
#  Args:
#	resource - 
#
#>
######################################################################
p6_aws_iam_svc_policy_cloudtrail_write() {
    local resource="$1"

    p6_aws_template_process "iam/cloudtrail" \
				 "RESOURCE=$resource"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_policy_service_write(service)
#
#  Args:
#	service - 
#
#>
######################################################################
p6_aws_iam_svc_policy_service_write() {
    local service="$1"

    p6_aws_template_process "iam/service" \
				 "SERVICE=$service"
}

######################################################################
#<
#
# Function: aws_arn role_arn = p6_aws_iam_svc_role_create(role_path, role_name, assume_role_policy_document)
#
#  Args:
#	role_path - 
#	role_name - 
#	assume_role_policy_document - 
#
#  Returns:
#	aws_arn - role_arn
#
#>
######################################################################
p6_aws_iam_svc_role_create() {
    local role_path="$1"
    local role_name="$2"
    local assume_role_policy_document="$3"

    local role_arn=$(
	p6_aws_cmd iam create-role \
		   "$role_name" "$assume_role_policy_document" \
		   --output text \
		   --path \'$role_path\' \
		   --query "'Role.Arn'"
	  )

    p6_return_aws_arn "$role_arn"
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_policy_to_role(role_full_path, policy_arn)
#
#  Args:
#	role_full_path - 
#	policy_arn - 
#
#>
######################################################################
p6_aws_iam_svc_policy_to_role() {
    local role_full_path="$1"
    local policy_arn="$2"

    local role_name=$(p6_uri_name "$role_full_path")

    p6_aws_cmd iam attach-policy-role \
	       --role-name $role_name \
	       --policy-arn $policy_arn

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_iam_svc_policy_create(policy_full_path, policy_description, policy_document)
#
#  Args:
#	policy_full_path - 
#	policy_description - 
#	policy_document - 
#
#>
######################################################################
p6_aws_iam_svc_policy_create() {
    local policy_full_path="$1"
    local policy_description="$2"
    local policy_document="$3"

    local policy_path=$(p6_uri_path "$policy_full_path")
    local policy_name=$(p6_uri_name "$policy_full_path")

    local policy_arn=$(
	p6_aws_cmd iam create-policy \
		   --output text \
		   --path $policy_path/ \
		   --policy-name $policy_name \
		   --description $policy_description \
		   --policy-document $policy_document \
		   --query "Policy.Arn"
	  )

    p6_return_aws_str "$policy_arn"
}