######################################################################
#<
#
# Function: p6_aws_kms_svc_list_aliases()
#
#>
######################################################################
p6_aws_kms_svc_list_aliases() {

    p6_aws_cmd kms list-aliases \
	       --output text \
	       --query "Aliases[]" | \
	sort
}


######################################################################
#<
#
# Function: p6_aws_kms_svc_key_create(key_description, key_policy)
#
#  Args:
#	key_description - 
#	key_policy - 
#
#>
######################################################################
p6_aws_kms_svc_key_create() {
    local key_description="$1"
    local key_policy="$2"

    p6_aws_cmd kms create-key \
	       --description $key_description \
	       --policy $key_policy | \
	p6_json_key_2_value "KeyId" "-" # XXX: p6 me
}