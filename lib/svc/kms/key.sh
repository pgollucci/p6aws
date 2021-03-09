######################################################################
#<
#
# Function: p6_aws_kms_svc_list_aliases_mine()
#
#>
######################################################################
p6_aws_kms_svc_list_aliases_mine() {

    p6_aws_cmd kms list-aliases \
	       --output text \
		   --query "'Aliases[].[AliasName, AliasArn]'" | grep -v alias/aws/ | \
		   sort
}

######################################################################
#<
#
# Function: p6_aws_kms_svc_list_aliases_aws()
#
#>
######################################################################
p6_aws_kms_svc_list_aliases_aws() {

    p6_aws_cmd kms list-aliases \
	       --output text \
		   --query "'Aliases[].[AliasName, AliasArn]'" | grep alias/aws/ | \
		   sort
}

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
		   --query "'Aliases[].[AliasName, AliasArn]'" | \
		   sort
}