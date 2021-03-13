######################################################################
#<
#
# Function: p6_aws_svc_organizations_accounts_list()
#
#>
######################################################################
p6_aws_svc_organizations_accounts_list() {

    p6_aws_cli_cmd organizations list-accounts \
        --output text \
        --query "'Accounts[].[Id, Status, JoinedMethod, Arn, Name, Email]'"
}

######################################################################
#<
#
# Function: aws_account_id new_account_id = p6_aws_svc_organizations_account_id_from_account_alias(account_alias)
#
#  Args:
#	account_alias -
#
#  Returns:
#	aws_account_id - new_account_id
#
#>
######################################################################
p6_aws_svc_organizations_account_id_from_account_alias() {
    local account_alias="$1"

    account_alias=$(p6_string_replace "$account_alias" '\"')

    local new_account_id
    new_account_id=$(p6_aws_svc_organizations_accounts_list | awk -v k="$account_alias" '$5 ~ k { print $1 }')

    p6_return_aws_account_id "$new_account_id"
}