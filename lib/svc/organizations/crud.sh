###################################################################################
#<
#
#
#
#>
####################################################################################
p6_aws_organizations_svc_account_create() {
    local account_name="$1"
    local account_email="$2"

    local cas_id=$(p6_aws_organizations_svc_account_create "$account_email" "$account_alias")
    p6_aws_organizations_svc_account_wait_for "$cas_id"

    local account_id=$(p6_aws_organizations_svc_account_id_from_name "$account_alias")

    p6_return "$account_id"
}

###################################################################################
#<
#
#
#
#>
####################################################################################
p6_aws_organizations_svc_account_wait_for() {
    local cas_id="$1"

    p6_run_retry \
	p6_aws_organizations_svc_account_create_stop \
	p6_aws_organizations_svc_account_create_status "$cas_id"
}

###################################################################################
#<
#
#
#
#>
####################################################################################
p6_aws_organizations_svc_account_create_stop() {
    local status="$1"
    local cas_id="$2"

    [ x"$status" = x"FAILED" ] && p6_die "15" "$cas_id $status"
    [ x"$status" = x"ACTIVE" ] && break

    # continue
}

###################################################################################
#<
#
# No Filter support
#
#
#>
####################################################################################
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

###################################################################################
#<
#
# No Filter support
#
#
#>
####################################################################################
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

###################################################################################
#<
#
# No Filter support
#
#
#>
####################################################################################
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

###################################################################################
#<
#
#
#
#>
####################################################################################
p6_aws_organizations_svc_accounts_list() {

    p6_aws_organizations_accounts_list \
	--output text \
	--query "'Accounts[].[Id, Status, JoinedMethod, Arn, Name, Email]'"
}
