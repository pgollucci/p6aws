######################################################################
#<
#
# Function: path saml_file = p6_aws_organizations_svc_account_make(cred_file, src_cred_file, assumed_cred_file, org, account_alias, account_email, account_map, saml_provider, saml_provider_email, region, output, role_full_path, policy_arn, cert_subject, cert_bits, cert_exp)
#
#  Args:
#	cred_file - 
#	src_cred_file - 
#	assumed_cred_file - 
#	org - 
#	account_alias - 
#	account_email - 
#	account_map - 
#	saml_provider - 
#	saml_provider_email - 
#	region - 
#	output - 
#	role_full_path - 
#	policy_arn - 
#	cert_subject - 
#	cert_bits - 
#	cert_exp - 
#
#  Returns:
#	path - saml_file
#
#>
######################################################################
p6_aws_organizations_svc_account_make() {
    local cred_file="$1"
    local src_cred_file="$2"
    local assumed_cred_file="$3"
    local org="$4"
    local account_alias="$5"
    local account_email="$6"
    local account_map="$7"
    local saml_provider="$8"
    local saml_provider_email="$9"
    local region="${10}"
    local output="${11}"
    local role_full_path="${12}"
    local policy_arn="${13}"
    local cert_subject="${14}"
    local cert_bits="${15}"
    local cert_exp="${16}"

#    local account_id=$(p6_aws_organizations_svc_account_create_or_fetch "$account_alias" "$account_email" "$account_map")
#    local saml_file=$(p6_jc_app_create "$org" "$account_id" "$cert_subject" "$cert_bits" "$cert_exp" "$saml_provider" "$saml_provider_email" "$role_full_path") # free me

    local account_id=471418688340
    local saml_file=/tmp/p6he-AWS-JumpCloud.xml

    p6_aws_organizations_svc_run_as \
	"$account_alias" "$account_map" "$region" "$output" "OrganizationAccountAccessRole" "$saml_provider_email" "$cred_file" "$src_cred_file" "$assumed_cred_file" \
	p6_aws_organizations_svc_account_init \
	"$org" "$account_alias" "$account_email" "$account_id" \
	"$saml_file" "$saml_provider" \
	"$role_full_path" "$policy_arn" "$saml_provider"

    p6_return_path "$saml_file"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_account_init(org, account_alias, account_email, account_id, saml_file, saml_provider, role_full_path, policy_arn, provider)
#
#  Args:
#	org - 
#	account_alias - 
#	account_email - 
#	account_id - 
#	saml_file - 
#	saml_provider - 
#	role_full_path - 
#	policy_arn - 
#	provider - 
#
#>
######################################################################
p6_aws_organizations_svc_account_init() {
    local org="$1"
    local account_alias="$2"
    local account_email="$3"
    local account_id="$4"
    local saml_file="$5"
    local saml_provider="$6"
    local role_full_path="$7"
    local policy_arn="$8"
    local provider="$9"

    p6_aws_iam_svc_password_policy_default
    p6_aws_iam_account_alias_create "$account_alias"
    # aws_sts_regions_disable $account_email
    # aws_sts_root_keys_delete $account_email
    # aws_sts_root_mfa_enable $account_email
    p6_aws_iam_saml_provider_create "file://$saml_file" "$saml_provider"
    p6_aws_iam_svc_role_saml_create "$role_full_path" "$policy_arn" "$account_id" "$saml_provider"
}

######################################################################
#<
#
# Function: str  = p6_aws_organizations_svc_account_create_or_fetch(account_alias, account_email, account_map)
#
#  Args:
#	account_alias - 
#	account_email - 
#	account_map - 
#
#  Returns:
#	str - 
#
#>
######################################################################
p6_aws_organizations_svc_account_create_or_fetch() {
    local account_alias="$1"
    local account_email="$2"
    local account_map="$3"

    local account_id=$(p6_aws_util_account_alias_to_id "$account_alias" "$account_map")
#    if p6_string_blank "$account_id"; then
#	account_id=$(p6_aws_organizations_svc_account_create "$account_email" "$account_alias")
#	p6_aws_util_account_map "$account_id" "$account_alias" "$account_map"
#    fi

    p6_return_str $account_id
}

######################################################################
#<
#
# Function: str account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
#
#  Args:
#	account_name - 
#	account_email - 
#	account_name - 
#	account_email - 
#	account_email - 
#	account_alias - 
#
#  Returns:
#	str - account_id#	str - car_id
#
#>
######################################################################
p6_aws_organizations_svc_account_create() {
    local account_email="$1"
    local account_alias="$2"

    local car=$(p6_aws_organizations_account_create "$account_email" "$account_alias")
    p6_aws_organizations_svc_account_wait_for "$car"

    p6_aws_organizations_svc_account_id_from_alias "$account_alias"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_account_wait_for(cas_id, car)
#
#  Args:
#	cas_id - 
#	car - 
#
#>
######################################################################
p6_aws_organizations_svc_account_wait_for() {
    local car="$1"

    p6_run_retry \
	p6_aws_organizations_svc_account_create_stop \
	p6_aws_organizations_create_account_status_describe "$car"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_account_create_stop(status, cas_id, status, car)
#
#  Args:
#	status - 
#	cas_id - 
#	status - 
#	car - 
#
#>
######################################################################
p6_aws_organizations_svc_account_create_stop() {
    local status="$1"
    local car="$2"

    [ x"$status" = x"FAILED" ] && p6_die "15" "$car $status"
    [ x"$status" = x"ACTIVE" ] && break

    # continue
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_su(account_alias, map_file, region, output, role_full_path, role_session_name, cred_file, src_cred_file, assumed_cred_file)
#
#  Args:
#	account_alias - 
#	map_file - 
#	region - 
#	output - 
#	role_full_path - 
#	role_session_name - 
#	cred_file - 
#	src_cred_file - 
#	assumed_cred_file - 
#
#>
######################################################################
p6_aws_organizations_svc_su() {
    local account_alias="$1"
    local map_file="$2"
    local region="$3"
    local output="$4"
    local role_full_path="$5"
    local role_session_name="$6"
    local cred_file="$7"
    local src_cred_file="$8"
    local assumed_cred_file="$9"

    local role_handle="role/${role_full_path}"
    local profile="${account_alias}+${role_handle}"

    local account_id=$(p6_aws_util_account_alias_to_id "$account_alias" "$map_file")
    local role_arn="arn:aws:iam::${account_id}:${role_handle}"

    p6_aws_sts_svc_role_assume \
	"$profile" "$region" "$output" "$role_arn" "$role_session_name" \
	"$cred_file" "$src_cred_file" "$assumed_cred_file"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_su_un()
#
#>
######################################################################
p6_aws_organizations_svc_su_un() {

    p6_aws_sts_svc_role_unassume "$@"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_run_as(account_alias, account_map, region, output, role_name, role_session_name, cred_file, src_cred_file, assumed_cred_file, cmd)
#
#  Args:
#	account_alias - 
#	account_map - 
#	region - 
#	output - 
#	role_name - 
#	role_session_name - 
#	cred_file - 
#	src_cred_file - 
#	assumed_cred_file - 
#	cmd - 
#
#>
######################################################################
p6_aws_organizations_svc_run_as() {
    local account_alias="$1"
    local account_map="$2"
    local region="$3"
    local output="$4"
    local role_name="$5"
    local role_session_name="$6"
    local cred_file="$7"
    local src_cred_file="$8"
    local assumed_cred_file="$9"
    local cmd="${10}"
    shift 10

    # Get Privs
    p6_aws_organizations_svc_su \
	"$account_alias" "$account_map" "$region" "$output" "$role_name" "$role_session_name" \
	"$cred_file" "$src_cred_file" "$assumed_cred_file"

    # Do it
    p6_run_read_cmd "$cmd" "$@"

    # Drop Prvis
    p6_aws_organizations_svc_su_un "$cred_file" "$src_cred_file" "$assumed_cred_file"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_account_id_from_alias(alias)
#
#  Args:
#	alias - 
#
#>
######################################################################
p6_aws_organizations_svc_account_id_from_alias() {
    local alias="$1"

    p6_aws_organizations_accounts_list \
	--output text \
	--query "'Accounts[].[Id, Name]'" | \
	awk -v k=$alias '$2 ~ k { print $1 }'
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_account_status_create(car_id)
#
#  Args:
#	car_id - 
#
#>
######################################################################
p6_aws_organizations_svc_account_status_create() {
    local car_id="$1"

    p6_aws_organizations_create_account_status_describe "$car_id" \
	--output text \
	--query "'CreateAccountStatus.State'"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_accounts_list()
#
#>
######################################################################
p6_aws_organizations_svc_accounts_list() {

    p6_aws_organizations_accounts_list --output text --query "'Accounts[].[Id, Status, JoinedMethod, Arn, Name, Email]'"
}