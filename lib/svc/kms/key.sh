######################################################################
#<
#
# Function: p6_aws_svc_kms_list_aliases_mine()
#
#>
######################################################################
p6_aws_svc_kms_list_aliases_mine() {

    p6_aws_cli_cmd kms list-aliases \
	       --output text \
		   --query "'Aliases[].[AliasName, AliasArn]'" | grep -v alias/aws/ | \
		   sort
}

######################################################################
#<
#
# Function: p6_aws_svc_kms_list_aliases_aws()
#
#>
######################################################################
p6_aws_svc_kms_list_aliases_aws() {

    p6_aws_cli_cmd kms list-aliases \
	       --output text \
		   --query "'Aliases[].[AliasName, AliasArn]'" | grep alias/aws/ | \
		   sort
}

######################################################################
#<
#
# Function: p6_aws_svc_kms_list_aliases()
#
#>
######################################################################
p6_aws_svc_kms_list_aliases() {

    p6_aws_cli_cmd kms list-aliases \
	       --output text \
		   --query "'Aliases[].[AliasName, AliasArn]'" | \
		   sort
}