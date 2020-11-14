######################################################################
#<
#
# Function: aws_account_id account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
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
#	aws_account_id - account_id#	str - car_id#	aws_account_id - account_id
#
#>
######################################################################
p6_aws_organizations_svc_account_create() {
    local account_name="$1"
    local account_email="$2"

    local cas_id=$(p6_aws_organizations_svc_account_create "$account_email" "$account_alias")
    p6_aws_organizations_svc_account_wait_for "$cas_id"

    local account_id=$(p6_aws_organizations_svc_account_id_from_name "$account_alias")

    p6_return_aws_account_id "$account_id"
}

######################################################################
#<
#
# Function: bool bool = p6_aws_organizations_svc_account_wait_for(cas_id, car)
#
#  Args:
#	cas_id -
#	car -
#
#  Returns:
#	bool - bool#	bool - bool
#
#>
######################################################################
p6_aws_organizations_svc_account_wait_for() {
    local cas_id="$1"

    local bool=$(p6_run_retry \
		   p6_aws_organizations_svc_account_create_stop \
		   p6_aws_organizations_svc_account_create_status "$cas_id"
	  )

    p6_return_bool "$bool"
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
    local cas_id="$2"

    [ x"$status" = x"FAILED" ] && p6_die "15" "$cas_id $status"
    [ x"$status" = x"ACTIVE" ] && break

    # continue
}

######################################################################
#<
#
# Function: aws_account_id account_id = p6_aws_organizations_svc_account_id_from_name(account_name)
#
#  Args:
#	account_name -
#
#  Returns:
#	aws_account_id - account_id
#
#>
######################################################################
p6_aws_organizations_svc_account_id_from_name() {
    local account_name="$1"

    local account_id=$(
	p6_aws_cmd organizations list-accounts \
		   --output text \
		   --query "'Accounts[].[Id, Name]'" | \
	    awk -v k=$account_name '$2 ~ k { print $1 }'
	  )

    p6_return_aws_account_id "$account_id"
}

######################################################################
#<
#
# Function: aws_account_id account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
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
#	aws_account_id - account_id#	str - car_id#	aws_account_id - account_id
#
#>
######################################################################
p6_aws_organizations_svc_account_create() {
    local account_name="$1"
    local account_email="$2"

    local car_id=$(
	p6_aws_cmd organizations create-account \
		   "$account_email" "$account_name" \
		   --output text \
		   --query "CreateAccountStattus.Id"
	  )

    p6_return_str "$car_id"
}

######################################################################
#<
#
# Function: str status = p6_aws_organizations_svc_account_create_status(car_id)
#
#  Args:
#	car_id -
#
#  Returns:
#	str - status
#
#>
######################################################################
p6_aws_organizations_svc_account_create_status() {
    local car_id="$1"

    local status=$(
	p6_aws_cmd organiations describe-create-account-stattus \
		   "$car_id" \
		   --output text \
		   --query "'CreateAccountStatus.State'"
	  )

    p6_return_str "$status"
}

######################################################################
#<
#
# Function: p6_aws_organizations_svc_accounts_list()
#
#>
######################################################################
p6_aws_organizations_svc_accounts_list() {

    p6_aws_cmd organiations list-accounts \
	       --output text \
	       --query "'Accounts[].[Id, Status, JoinedMethod, Arn, Name, Email]'"
}