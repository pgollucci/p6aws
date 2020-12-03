######################################################################
#<
#
# Function: p6_aws_organizations_svc_account_id_from_account_name(account_name)
#
#  Args:
#	account_name -
#
#>
######################################################################
p6_aws_organizations_svc_account_id_from_account_name() {
    local account_name="$1"

    # strip quotes without shelling out
    account_name=${account_name//\"/}

    local new_account_id
    new_account_id=$(
        aws organizations list-accounts \
            --query "Accounts[].[Id, Name]" \
            --output text |
            grep "$account_name" |
            cut -f 1
    )

    # return it
    echo "$new_account_id"
}