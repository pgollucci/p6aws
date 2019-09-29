######################################################################
#<
#
# Function:
#     $account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
#
# Arg(s):
#    account_name - 
#    account_email - 
#    account_name - 
#    account_email - 
#    account_email - 
#    account_alias - 
#
# Return(s):
#    $account_id - 
#    $car_id - 
#
#>
######################################################################
p6_aws_organizations_svc_account_create() {
    local account_name="$1"
    local account_email="$2"

    local cas_id=$(p6_aws_organizations_svc_account_create "$account_email" "$account_alias")
    p6_aws_organizations_svc_account_wait_for "$cas_id"

    local account_id=$(p6_aws_organizations_svc_account_id_from_name "$account_alias")

    p6_return "$account_id"
}

######################################################################
#<
#
# Function:
#      = p6_aws_organizations_svc_account_wait_for(cas_id, car)
#
# Arg(s):
#    cas_id - 
#    car - 
#
#
#>
######################################################################
p6_aws_organizations_svc_account_wait_for() {
    local cas_id="$1"

    p6_run_retry \
	p6_aws_organizations_svc_account_create_stop \
	p6_aws_organizations_svc_account_create_status "$cas_id"
}

######################################################################
#<
#
# Function:
#      = p6_aws_organizations_svc_account_create_stop(status, cas_id, status, car)
#
# Arg(s):
#    status - 
#    cas_id - 
#    status - 
#    car - 
#
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
# Function:
#     $account_id = p6_aws_organizations_svc_account_id_from_name(account_name)
#
# Arg(s):
#    account_name - 
#
# Return(s):
#    $account_id - 
#
#>
######################################################################
p6_aws_organizations_svc_account_id_from_name() {
    local account_name="$1"

    local account_id=$(
	p6_aws_organizations_accounts_list \
	    --output text \
	    --query "'Accounts[].[Id, Name]'" | \
	    awk -v k=$account_name '$2 ~ k { print $1 }'
	  )

    p6_return "$account_id"
}

######################################################################
#<
#
# Function:
#     $account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
#
# Arg(s):
#    account_name - 
#    account_email - 
#    account_name - 
#    account_email - 
#    account_email - 
#    account_alias - 
#
# Return(s):
#    $account_id - 
#    $car_id - 
#
#>
######################################################################
p6_aws_organizations_svc_account_create() {
    local account_name="$1"
    local account_email="$2"

    local car_id=$(
	p6_aws_organizations_account_create \
	    "$account_email" "$account_name" \
	    --output text \
	    --query "CreateAccountStattus.Id"
	  )

    p6_return "$car_id"
}

######################################################################
#<
#
# Function:
#     $status = p6_aws_organizations_svc_account_create_status(car_id)
#
# Arg(s):
#    car_id - 
#
# Return(s):
#    $status - 
#
#>
######################################################################
p6_aws_organizations_svc_account_create_status() {
    local car_id="$1"

    local status=$(
	p6_aws_organizations_create_account_status_describe \
	    "$car_id" \
	    --output text \
	    --query "'CreateAccountStatus.State'"
	  )

    p6_return "$status"
}

######################################################################
#<
#
# Function:
#      = p6_aws_organizations_svc_accounts_list()
#
#
#
#>
######################################################################
p6_aws_organizations_svc_accounts_list() {

    p6_aws_organizations_accounts_list \
	--output text \
	--query "'Accounts[].[Id, Status, JoinedMethod, Arn, Name, Email]'"
}